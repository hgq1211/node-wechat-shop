
var express = require('express');
var router = express.Router();
var connect = require('connect');
//var cookieParser = require('cookie-parser');
var wechat = require('wechat');
var API = require('wechat-api');
var config = require('../config.js');
var routes = require('../routes/index');

//调用wechat-api，创建api对象
var api = new API(config.appid, config.appsecret);
api.getAccessToken(function (err, token) {  

     console.log(token);
});
var menu = {
    "button":[
        {   "name":"会员",
            "sub_button":[
                {
                    "type":"view",
                    "name":"注册会员",
                    "url":"http://www.leisong0801.cn/"
                },
                {
                    "type":"view",
                    "name":"会员活动",
                    "url":"http://www.leisong0801.cn/"
                },
                {
                    "type":"view",
                    "name":"在线充值",
                    "url":"http://www.leisong0801.cn/"
                },
                {
                    "type":"view",
                    "name":"我的会员卡",
                    "url":"http://www.leisong0801.cn/"
                },
                {
                    "type":"view",
                    "name":"我的优惠券",
                    "url":"http://www.leisong0801.cn/"
                }
            ]
        },

        {
            "name":"点餐",
            "sub_button":[
                {
                    "type":"view",
                    "name":"堂食扫码",
                    "url":"http://www.leisong0801.cn/"
                },
                {
                    "type":"view",
                    "name":"外卖自提",
                    "url":"http://www.leisong0801.cn/"
                },
                {
                    "type":"view",
                    "name":"我的订单",
                    "url":"http://www.leisong0801.cn/"
                },
                {
                    "type":"view",
                    "name":"我的账户",
                    "url":"http://www.leisong0801.cn/"
                }
            ]
        },
        {
            "name":"互动平台",
            "sub_button":[
                {
                    "type":"view",
                    "name":"官方网站",
                    "url":"http://www.leisong0801.cn/"
                },
                {
                    "type":"view",
                    "name":"吃货评价",
                    "url":"http://www.leisong0801.cn/"
                },
                {
                    "type":"view",
                    "name":"畅聊社区",
                    "url":"http://www.leisong0801.cn/"
                }
            ]
        }
    ]
}

//调用创建自定义菜单函数
api.createMenu(menu, function (err, result) {
    console.log(result);
});

//监听处理用户发送的Event类型的信息，
router.use('/',wechat(config,wechat.event(function(message,req,res,next){
  //当用户关注时获取用户的openid
  var openid=message.FromUserName;
  //req.sessionStore=openid;
  // req.sessioID=openid;

   api.getUser({openid, lang: 'zh_CN'}, function(err,result){

    //关注时的信息推送
    if(message.Event=='subscribe') {
            res.reply("您好:"+result.nickname+"\n欢迎关注:nodejs-wechat store\n您可以回复:r任意包含订餐二字的内容");
        }
    })
 })));

//根据发送类型的不同回复不同的信息
router.use('/', wechat(config).text(function (message, req, res, next) {

    if ((/['订餐']/).test(message.Content)) {
        var str='要订餐 <a href="http://8ddb6a5e.ngrok.io/">你就这么玩</a>';
        res.reply(str);
    } else {
      req.wxsession.text = req.wxsession.text || [];
      req.wxsession.text.push(message.Content);
      res.reply('亲，你说的是' + message.Content+'么？');
    }

}).image(function (message, req, res, next) {

  //res.reply(result.headimgurl);

}).voice(function (message, req, res, next) {
  // TODO
}).video(function (message, req, res, next) {
  // TODO
}).location(function (message, req, res, next) {
  // TODO
}).link(function (message, req, res, next) {
  // TODO
}).device_text(function (message, req, res, next) {
  // TODO
}).device_event(function (message, req, res, next) {
  // TODO
}).middlewarify());


module.exports = router;

