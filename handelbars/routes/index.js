var express = require('express');
var router = express.Router();
var crypto = require('crypto');
var config = require('../config');
var User_info = require('../models/user_info');
var Cart_info = require('../models/cart_info');
var Blog_info = require('../models/blog_info');
var QQ_login = require('../models/qqlogin_info');
var path = require('path');
var fs = require('fs');
var join = path.join;
var http = require('http');

    /* GET home page.
    * 链接到主页
    * */
router.get('/', function (req, res) {
    var student= [
            {
                "name": "张三",
                "sex": "0",
                "age": 18
            },
            {
                "sex": "0",
                "age": 22
            },
            {
                "name": "妞妞",
                "sex": "1",
                "age": 18
            }
        ]

    res.render('home',{
        layout: false,
        title:'汉字',
        student:student
    });
});
    //
    //router.get('/', function (req, res) {
    //    res.render('home', {
    //        title: '首页',
    //        user:req.session.user,
    //        qquser:req.session.qquser
    //       // user:user
    //    });
    //});
    /*链接到用户名界面
    * */
    router.get('/user_getNickName', function (req, res) {
        res.render('user_getNickName', {
            title: '已登录用户名',
            user:req.session.user
        });
    });
    router.get('/user_qqname', function (req, res) {
        res.render('user_qqname', {
            title: '已登录用户名',
            qquser:req.session.qquser
        });
    });
    /*GET user_register page*/
    router.get('/user_register', function (req, res) {
        res.render('user_register', {
            title: '用户注册'
        });
    });

    /*获取注册页面的信息
     *注册成功后跳转到登录页面
     *  */
    router.post('/user_register', function (req, res) {
        //生成密码的 md5 值
        var md5 = crypto.createHash("md5");
        var password = md5.update(req.body.password).digest('base64');
        //将注册页面传递过来的参数封装到 newUser 这个对象中
        var newUser = new User_info({
            user_nickname: req.body.nickname,
            user_name: req.body.username,
            user_email: req.body.email,
            user_gender: req.body.gender,
            password: password
        });

        //检查用户名是否已经存在
        User_info.get(newUser.user_nickname, function (err, user) {
            if (user) {
                req.flash('error', '用户已存在!');
                return res.redirect('/user_register');//返回注册页
            }
            // 如果数据库中不存在这个新用户名，则新增患者用户
            newUser.save(function (err) {
                if (err) {
                    req.flash('error', err);
                    return res.redirect('/user_register');//注册失败返回患者注册页
                }
                req.flash('success', ' 注册成功');
                res.redirect('/');//注册成功后跳转到提示注册成功的页面，5秒后跳转至登录主界面
            });
        });
    });

      /*GET user_login page*/
    router.get('/user_login', function (req, res) {
        res.render('user_login', {
            title: '用户登录'
        });
    });
    /*获取登录界面用户输入的信息
     *用户提交之后验证输入用户名与密码是否是正确
     * 验证成功之后跳转至首页
      * */
    router.post('/user_login', function (req, res) {
        //获取用户填入的账户名称
        var nickname = req.body.username;
        var md5 = crypto.createHash('md5');
        var password = md5.update(req.body.password).digest('base64');
        var preurl=req.query.url;
            User_info.get(nickname, function (err, user) {
                if (!user) {
                    req.flash('error', ' 用户不存在！');
                    return res.redirect('/user_login');
                }
                if (user.password != password) {
                    req.flash('error', ' 登录密码错误');
                    return res.redirect('/user_login');
                }
                //if (user.user_login == 1) {
                //    req.flash('error', '不能重复登录');
                //    return res.redirect('/user_login');
                //}
                req.session.user = user;
                req.flash('success', ' 登入成功');
                User_info.updateLogin(nickname, function (err, user) {
                    if (!user) {
                        req.flash('error', ' 登录超时！');
                        return res.redirect('/user_login');
                    }
            });
                 res.redirect(preurl);
                //res.redirect('/');
        });
       });
    router.post('/qqLogin',function(req,res){
        var qquser=new QQ_login({
            openId:req.body.openId,
            othername:req.body.othername,
            accessToken:req.body.accessToken
        });
        req.session.qquser=req.body.userobj;
        console.log(req.body.userobj);
        QQ_login.get(qquser.openId,function(err,user){
            if(user){
                return res.redirect('/');
            }
        qquser.save(function(err){
            if(err){
                return res.redirect('/user_login');
            }

            return res.redirect('/');
        });
        })
    });
    /*用户主页面上点击登录按钮时弹出的模态框登录
    * 跟用户使用单独登录界面时要完成的操作一样
    * */
    router.post('/user/login', function (req, res) {
        //获取用户填入的账户名称
        var nickname = req.body.nickname;
        var md5 = crypto.createHash('md5');
        var password = md5.update(req.body.password).digest('base64');
        User_info.get(nickname, function (err, user) {
            if (!user) {
                req.flash('error', ' 用户不存在！');
                return res.redirect('/user_login');
            }
            if (user.password != password) {
                req.flash('error', ' 登录密码错误');
                return res.redirect('/user_login');
            }
            //if (user.user_login == 1) {
            //    req.flash('error', '不能重复登录');
            //    return res.redirect('/user_login');
            //}
            req.session.user = user;
            req.flash('success', ' 登入成功');

            User_info.updateLogin(nickname, function (err, user) {
                if (!user) {
                    req.flash('error', ' 登录超时！');
                    return res.redirect('/user_login');
                }
            });
            res.json(user);
        });
    });
    /*退出登录*/
    router.get('/logout', function (req, res) {
        //清空session保存的用户信息
        req.session.user = null;
        req.session.qquser = null;
        req.flash('success', '登出成功!');
        res.redirect('/');//登出成功后跳转到主页
    });
    /*GET uesr_blog page*/
    router.get('/user_blog', function (req, res) {
        var currentpage=req.query.currentpage?req.query.currentpage:1;
        var changepage=(currentpage-1)*10;
        console.log("curret"+currentpage+"changge"+changepage);
        Blog_info.get(function(err,tall){
            if(err) {
                req.flash('err', "请求超时");
                return false;
            }
          Blog_info.findPre(changepage,function(err,prepage){
              if (err) {
                  console.log(err);
                  return res.redirect('/error');
              }
            var count=tall.length%10==0?tall.length/10:Math.floor(tall.length/10)+1;
            res.render('user_blog', {
                title: '我的Blog',
                blog:prepage,
                current:currentpage,
                count:count,
                user:req.session.user,
                qquser:req.session.qquser
            })
            })
        });
    });
    //获取博文内容
    router.post("/user/blog",function(req,res){
        var blog=new Blog_info({
            blog_text:req.body.submit,
            user_nickName:req.session.user.user_nickName
        });
        blog.save(function(err){
            if (err) {
                req.flash('error', err);
                return res.redirect('/user_blog');
            }
            req.flash('success', '发表成功!');
            res.redirect('/user_blog');
        })
    });
    /*blog详情页*/
    router.get('/user_blogDetail', function (req, res) {
        var blog_id=req.query.blog_id;
        Blog_info.find(blog_id,function(err,blog_detail){
            if(err) {
                req.flash('err', "请求超时");
                return false;
            }
            res.render('user_blogDetail', {
                title: 'Blog详情',
                blog_detail:blog_detail,
                user:req.session.user,
                qquser:req.session.qquser
            });
        });
    });
    /*GET shop_home page*/
    router.get('/shop_home', function (req, res) {
        var user_id=req.session.user?req.session.user.user_id:null;
        if(user_id!=null){
        Cart_info.getAll(user_id,function(err,cart_item) {
            if (err) {
                req.flash("error", "请求错误");
                return res.redirect('/shop_cart');
            }

            res.render('shop_home', {
                title: '商城在线',
                count: cart_item.length,
                cart_item: cart_item,
                user:req.session.user,
                qquser:req.session.qquser
            });
        });
        }
        else
            res.render('shop_home', {
                title: '商城在线',
                count: 0,
                cart_item: null,
                user:req.session.user,
                qquser:req.session.qquser
            });
    });
    /*商城首页点击添加到购物车按钮时执行以下操作
    * */

    router.post("/add/item",function(req,res){
        var item_id=req.body.item_id;
        var num=req.body.num;
        var item=new Cart_info({
            item_id:item_id,
            item_number:num ,
            user_id:req.session.user.user_id
        });
        item.save(function(err){
            if (err) {
                req.flash('error', err);
                return res.redirect('/shop_home');
            }
            req.flash('success', '添加成功');
            res.redirect('/shop_home');
        })
    });
    /*GET shop_details page*/
    router.get('/shop_detail', function (req, res) {
        res.render('shop_detail', {
                title: '商品详情',
                user:req.session.user,
                qquser:req.session.qquser
        });
    });
    /*GET shop_details page*/
    router.get('/maintenance-page', function (req, res) {
        res.render('maintenance-page', {
            title: '商品详情',
            user:req.session.user,
            qquser:req.session.qquser
        });
    });
    /*GET shop_cart pag
    * 在进入购物车之前先检查用户是否登录系统，如果没有登录强制登录
     * 未登录用户无法访问购物车页面
    * */
    router.get('/shop_cart',checkLogin);
    router.get('/shop_cart', function (req, res) {
        Cart_info.getAll(req.session.user.user_id,function(err,item){
            if(err){
                req.flash("error","请求错误");
                return res.redirect('/shop_cart');
            }
        res.render('shop_cart', {
            title: '我的购物车',
            count:item.length,
            item:item,
            user:req.session.user,
            qquser:req.session.qquser
        });
        });
    });
    //购物车删除商品
    router.post("/del/item",function(req,res){
        var item_id=req.body.item_id;
        Cart_info.del_item(item_id, function (err) {
            if (err) {
                req.flash('error', ' 操作失败！');
                return res.redirect('/shop_cart');
            }
        });
        res.end('ok')
    });
    /*用户
    * */
    /*GET shop_checkout page*/
    router.get('/shop_checkout', function (req, res) {
        Cart_info.getAll(req.session.user.user_id,function(err,item){
            if(err){
                req.flash("error","请求错误");
                return res.redirect('/error');
            }
            res.render('shop_checkout', {
                title: '商品结算',
                count:item.length,
                item:item,
                user:req.session.user,
                qquser:req.session.qquser
            });
        });
    });

    //上传图片
    router.get('/p_upload', function (req, res) {
        res.render('p_upload', {
            domain: config.Domain,
            uptoken_url: config.Uptoken_Url,
            title:'上传图片',
            user:req.session.user,
            qquser:req.session.qquser
        });
    });
    /*GET item_show page*/
    router.get('/item_show', function (req, res) {
        res.render('item_show', {
            title: '特色展示',
            user:req.session.user,
            qquser:req.session.qquser
        });
    });
    router.get('/item_detail', function (req, res) {
        res.render('item_detail', {
            title: '详情展示',
            user:req.session.user,
            qquser:req.session.qquser
        });
    });
    /*GET about page*/
    router.get('/about', function (req, res) {
        res.render('about', {
            title: '关于我们',
            user:req.session.user,
            qquser:req.session.qquser
        });
    });
    /*GET 404 page*/
    router.get('/error', function (req, res) {
        res.render('error', {
            title: '404',
            user:req.session.user,
            qquser:req.session.qquser
        });
    });
    /*GET ajax*/
    router.get('/ajax_loadMore', function (req, res) {
        res.render('ajax_loadMore', {
            title: '关于我们',
            user:req.session.user,
            qquser:req.session.qquser
        });
    });
    router.get('/ajax_project1', function (req, res) {
        res.render('ajax_project1', {
            title: '关于我们',
            user:req.session.user,
            qquser:req.session.qquser
        });
    });
module.exports = router;
/*购物车页面进入时检查用户是否登录系统
* */
function checkLogin(req, res, next) {
    if (!req.session.user) {
        req.flash('error', '未登入');
        return res.redirect('user_login?shop_cart');
    }
    next();
}