
var express = require('express');
var router = express.Router();
//var cookieParser = require('cookie-parser');
var wechat = require('wechat');
var API = require('wechat-api');
var config = require('../config.js');
var menu=require('../config/menu.js');

//调用wechat-api，创建api对象
var api = new API(config.appid, config.appsecret);
api.getAccessToken(function (err, token) {
    //vP8ld41TV072cGHuetdqPMhq_h_k7J0juySNwlpbhC0dOt_qjvUZy-8YJcZB0nDSdm0-Tn4MI3CKORItt4X20lk1lLl1IfuA_q6YnstlferT_zFw_gcJjMS7hs8GmeYVYYGgABATTB
     console.log(token);
});

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
console.log(message);
   api.getUser({openid, lang: 'zh_CN'}, function(err,result){

    //关注时的信息推送
    if(message.Event=='subscribe') {
        var nickname=result.nickname||"无";
            res.reply("您好:"+nickname+"\n欢迎关注:nodejs-wechat store\n您可以回复:任意包含订餐二字的内容");
        }
    })
 })));

//根据发送类型的不同回复不同的信息
router.use('/', wechat(config).text(function (message, req, res, next) {

    if ((/['订餐']/).test(message.Content)) {
        var str='要订餐 <a href="http://hgq1211.duapp.com/">你就这么玩</a>';
        res.reply(str);
    } else {
      req.wxsession.text = req.wxsession.text || [];
      req.wxsession.text.push(message.Content);
      res.reply('亲，你说的是' + message.Content+'么？');
    }

}).image(function (message, req, res, next) {

    res.reply('亲，你说的是' + message+'么？');

}).voice(function (message, req, res, next) {
  // TODO
}).video(function (message, req, res, next) {
  // TODO
}).location(function (message, req, res, next) {
    res.reply('亲，你是在' + message+'么？');
}).link(function (message, req, res, next) {
  // TODO
}).device_text(function (message, req, res, next) {
  // TODO
}).device_event(function (message, req, res, next) {
  // TODO
}).middlewarify());


module.exports = router;

