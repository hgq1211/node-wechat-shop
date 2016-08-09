/**
 * Created by Double-Black on 2015/11/12.
 */
var  client = require('../database');
var  uid = require('../utils/uuid');//生成管理员id

var tableName = "admin";
mysql = client.getDbCon() ;
module.exports = function (adminname, callback) {
    console.log(adminname);
    // 读取 Admin 集合
    var sql = "select c.* from "+tableName+" c where c.Admin_name='"+adminname+"'";
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
