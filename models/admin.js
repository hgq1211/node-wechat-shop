/**
 * Created by Double-Black on 2015/11/12.
 */
var  client = require('../database.js');
var tableName = "admin";
mysql = client.getDbCon() ;
function Admin(obj){
    this.Admin_name=obj.name;
}
module.exports = Admin;
Admin.prototype.save=function(callback){
    var sql ="insert into admin (Admin_password,Admin_name) values(?,?)";
    mysql.query(sql,[123,this.Admin_name],function(err,results,fields){
        if (err) {
            throw err;
        } else {
            return callback(err, results, fields);
        }
    });
}
Admin.find = function (adminname, callback) {

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
