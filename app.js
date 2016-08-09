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

//用于生成口令的散列值
var crypto = require('crypto');
var app = express();
//handelbar模板
var exphbs = require('express-handlebars');
var helpers = require('./lib/hbsHelpers');
//自动路由映射
var autoRoutes = require('express-auto-routes')(app);
// auto mount routes
autoRoutes(path.join(__dirname, './controllers'));
// view engine setup
app.set('views', path.join(__dirname, 'views'));
//使用hbs 扩展
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

// uncomment after placing your favicon in /public
app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(flash());

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

//app.use('/', routes);
app.use('/wechat',wechat);
// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

app.use(function(req, res, next){
    res.locals.user = req.session.user;//session 保存用户信息
    var error = req.flash('error');
    res.locals.error = error.length ? error : null;
    var success = req.flash('success');
    res.locals.success = success.length ? success : null;
    next();
});


console.log("something happening");

// error handlers

// development error handler
// will print stacktrace
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
