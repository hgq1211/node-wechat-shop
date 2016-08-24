/**
 * Created by Administrator on 2016/3/3 0003.
 */
var  client = require('../database');
var  uid = require('../utils/uuid');//用于生成id
function  Blog_info(blog_info) {
    this.user_nickName = blog_info.user_nickName;
    this.blog_id = blog_info.blog_id;
    this.image_id= blog_info.image_id;
    this.blog_text= blog_info.blog_text;
    this.published_data= blog_info.published_data;
}
mysql = client.getDbCon();
module.exports = Blog_info;
//新增用户
Blog_info.prototype.save = function  save(callback) {
    // 用户对象
    var date = new Date();
    var time = {
        date: date,
        year : date.getFullYear(),
        month : date.getFullYear() + "-" + (date.getMonth() + 1),
        day : date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate(),
        minute : date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate() + " " +
        date.getHours() + ":" + (date.getMinutes() < 10 ? '0' + date.getMinutes() : date.getMinutes())+":"+date.getSeconds()
    };
    var  blog_info = {
        user_nickName : this.user_nickName,
        blog_title:"1",
        blog_text : this.blog_text,
        published_data :time.minute,
        image_id:"0"
    };
    uuid = uid.v4();
    //插入数据库
    var sql ="insert into blog_info (user_nickName,blog_id,image_id,blog_title,blog_text,published_data) values(?,?,?,?,?,?)";

    mysql.query(sql,[blog_info.user_nickName,uuid,blog_info.image_id,blog_info.blog_title,blog_info.blog_text,blog_info.published_data],function(err,results,fields){
        if (err) {
            throw err;
        } else {
            //返回用户id
            return callback(err, uuid, fields);
        }
    });
};
//获取blog的内容
Blog_info.get =  function get(callback) {
    var sql = "select a.blog_id from blog_info a";
    console.log(sql);
    mysql.query(sql,function(err,results,fields){
        if(err){
            throw err;
        }else{
            callback(err,results,fields);
        }
    })
};
Blog_info.findPre =  function(changepage,callback) {
    var sql ="select a.*from blog_info a order by a.published_data desc LIMIT "+changepage+","+10;
    console.log("所有博客信息"+sql);
    mysql.query(sql,function(err,results,fields){
        if(err){
            throw err;
        }else{
            console.log(results);
            callback(err,results,fields);
        }
    })

};
Blog_info.find =  function find(blog_id,callback) {

    var sql = "select a.* from blog_info a where a.blog_id='"+blog_id+"'";
    console.log(sql);
    mysql.query(sql,function(err,results,fields){
        if(err){
            throw err;
        }else{
            callback(err,results,fields);
        }
    })
};
