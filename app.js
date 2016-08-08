var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var connect = require("connect");
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var session  = require('express-session');
var routes = require('./routes/index');
var flash = require('connect-flash');
var ejs = require('ejs');
var wechat = require('./routes/wechat');
/*图片验证码*/

/*七牛依赖引入*/
var qiniu = require('qiniu');       
var config = require('./config');
//用于生成口令的散列值
var crypto = require('crypto');
var app = express();
var exphbs = require('express-handlebars');
var helpers = require('./lib/hbsHelpers');
// view engine setup
app.set('views', path.join(__dirname, 'views'));
//使用html 扩展
app.engine('hbs', exphbs({
    layoutsDir:'views/layouts',
    defaultLayout: 'main',
    extname: '.hbs',
    partialsDir: [
        'views/partial'
    ],
    helpers: helpers
}));

app.set('view engine', 'hbs');


//app.engine('.html',ejs.__express);
//app.set('view engine','html');
// uncomment after placing your favicon in /public
app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(flash());

app.use(cookieParser());
app.use(session({
    secret: "hello world",//这个是session加密需要的，随便写的。
    resave:false,
    saveUninitialized:false,
   //  genid: function(req) {  
   //   return 123; // use UUIDs for session IDs   
   // },  
    cookie: {
        maxAge: 60000
    }
}));


app.use('/', routes);
app.use('/wechat',wechat);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

app.use(function(req, res, next){
    console.log("app.usr local");
    res.locals.user = req.session.user;//session 保存用户信息
    var error = req.flash('error');
    res.locals.error = error.length ? error : null;
    var success = req.flash('success');
    res.locals.success = success.length ? success : null;
    next();
});

//七牛上传

routes.get('/uptoken', function (req, res, next) {
    var token = uptoken.token();
    res.header("Cache-Control", "max-age=0, private, must-revalidate");
    res.header("Pragma", "no-cache");
    res.header("Expires", 0);
    if (token) {
        res.json({
            uptoken: token
        });
    }
});

routes.post('/downtoken', function (req, res) {
    var key = req.body.key,
        domain = req.body.domain;
    //trim 'http://'
    if (domain.indexOf('http://') != -1) {
        domain = domain.substr(7);
    }
    //trim 'https://'
    if (domain.indexOf('https://') != -1) {
        domain = domain.substr(8);
    }
    //trim '/' if the domain's last char is '/'
    if (domain.lastIndexOf('/') === domain.length - 1) {
        domain = domain.substr(0, domain.length - 1);
    }

    var baseUrl = qiniu.rs.makeBaseUrl(domain, key);
    var deadline = 3600 + Math.floor(Date.now() / 1000);

    baseUrl += '?e=' + deadline;
    var signature = qiniu.util.hmacSha1(baseUrl, config.SECRET_KEY);
    var encodedSign = qiniu.util.base64ToUrlSafe(signature);
    var downloadToken = config.ACCESS_KEY + ':' + encodedSign;

    if (downloadToken) {
        res.json({
            downtoken: downloadToken,
            url: baseUrl + '&token=' + downloadToken
        })
    }
});

routes.get('/p_upload', function (req, res) {
    res.render('patient/p_upload', {
        domain: config.Domain,
        uptoken_url: config.Uptoken_Url
    });
});
qiniu.conf.ACCESS_KEY = config.ACCESS_KEY;
qiniu.conf.SECRET_KEY = config.SECRET_KEY;
var uptoken = new qiniu.rs.PutPolicy(config.Bucket_Name);
console.log("something happening");

// error handlers

//// development error handler
//// will print stacktrace
if (app.get('env') === 'development') {
  app.use(function(err, req, res, next) {
    res.status(err.status || 500);
    res.render('404', {
      message: err.message,
      error: err
    });
  });
}

// production error handler
// no stacktraces leaked to user
app.use(function(err, req, res, next) {
  res.status(err.status || 500);
  res.render('404', {
    message: err.message,
    error: {}
  });
});


module.exports = app;
