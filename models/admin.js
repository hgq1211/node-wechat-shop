/**
 * Created by Double-Black on 2015/11/12.
 */
var  client = require('../database');
var  uid = require('../utils/uuid');//生成管理员id
function  Admin(admin) {
    this.Admin_name = admin.Admin_name;//管理员帐号
    this.Admin_password =admin.Admin_password;//密码
}


var tableName = "admin";
mysql = client.getDbCon() ;
module.exports = Admin;
//管理员登录时获取用户，检查当前输入的管理员帐号是否存在。
Admin.get =  function  get(adminname, callback) {
    console.log(adminname);
    // 读取 Admin 集合
    var sql = "select c.* from admin c where c.Admin_name='"+adminname+"'";
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
