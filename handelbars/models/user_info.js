/**
 * Created by Administrator on 2016/2/2 0002.
 */
var  client = require('../database');
var  uid = require('../utils/uuid');//用于生成id
function  User_info(user_info) {
    this.user_nickname=user_info.user_nickname;
    this.password = user_info.password;
    this.user_name= user_info.user_name;
    this.user_email= user_info.user_email;
    this.user_gender= user_info.user_gender;
}
var tableName = "user_info";
mysql = client.getDbCon();
module.exports = User_info;
//新增用户
User_info.prototype.save = function  save(callback) {
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
    var  user_info = {
        user_nickname:this.user_nickname,
        register_data: time.day,
        user_id : this.user_id,
        password:this.password,
        user_email : this.user_email,
        user_name : this.user_name,
        user_gender :this.user_gender

    };
    uuid = uid.v4();
    //插入数据库
    var sql ="insert into user_info (user_nickname,register_data,user_id,password,user_name,user_email,user_gender) values(?,?,?,?,?,?,?)";

    mysql.query(sql,[user_info.user_nickname,user_info.register_data,uuid,user_info.password,user_info.user_name,user_info.user_email,user_info.user_gender],function(err,results,fields){
        if (err) {
            throw err;
        } else {
            //返回用户id
            return callback(err, uuid, fields);
        }
    });
};
//获取用户
User_info.get =  function  get(nickname, callback) {
    // 读取 users 集合
    var sql = "select * from user_info where user_info.user_nickName='"+nickname+"'";
    console.log(sql);
    mysql.query(sql,function(err,results,fields){
        if(err){
            throw err;
        }else{
            console.log(results[0]);
            callback(err,results[0],fields);
        }
    })
};
//更新登录状态
User_info.updateLogin =  function  updateLogin(nickname, callback) {

    // 读取 users 集合
    var sql = "update user_info set user_info.user_login='1' where user_info.user_nickName='"+nickname+"'";
    console.log(sql);
    mysql.query(sql,function(err,results,fields){
        if(err){
            throw err;
        }else{
            console.log(results);
            callback(err,results,fields);
        }
    })
};