/**
 * Created by Administrator on 2016/3/14 0014.
 */
var  client = require('../database');
function  QQ_info(qq_info) {
    this.openId=qq_info.openId;
    this.othername = qq_info.othername;
    this.accessToken=qq_info.accessToken;
}
mysql = client.getDbCon();
module.exports = QQ_info;
//新增用户
QQ_info.prototype.save = function  save(callback) {
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
    var  qq_info = {
        openId:this.openId,
        accessToken:this.accessToken,
       othername:"0"
    };

    //插入数据库
    var sql ="insert into qq_login (openId,othername,accessToken) values(?,?,?)";
    mysql.query(sql,[qq_info.openId,qq_info.othername,qq_info.accessToken],function(err,results,fields){
        if (err) {
            throw err;
        } else {
            //返回用户id
            console.log(sql);
            return callback(err, results, fields);
        }
    });
};

QQ_info.get=function(openId,callback){
    var sql="select * from qq_login where qq_login.openId='"+openId+"'";
    mysql.query(sql,function(err,results,fields){
        if(err){
            throw err;
        }else{
            console.log(results[0]);
            callback(err,results[0],fields);
        }
    })
}