/**
 * Created by Administrator on 2016/2/11 0011.
 */
var  client = require('../database');
var  uid = require('../utils/uuid');//用于生成id
function  Cart_info(cart_info) {
    this.add_data = cart_info.add_data;
    this.user_id = cart_info.user_id;
    this.item_id= cart_info.item_id;
    this.item_number=cart_info.item_number
}
var tableName = "cart_info";
mysql = client.getDbCon();
module.exports = Cart_info;
//新增用户
Cart_info.prototype.save = function  save(callback) {
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
    var  cart_info = {
        add_data: time.minute,
        user_id : this.user_id,
        item_id : this.item_id,
        item_number : this.item_number
    };
    //插入数据库
    var sql ="insert into cart_info (add_data,user_id,item_id,item_number) values(?,?,?,?)";
    mysql.query(sql,[cart_info.add_data,cart_info.user_id,cart_info.item_id,cart_info.item_number],function(err,results,fields){
        if (err) {
            throw err;
        } else {
            //返回用户id
            return callback(err, fields);
        }
    });
};
//获取用户购物车信息
Cart_info.getAll =  function(user_id, callback) {

    var sql = "select * from cart_info where cart_info.user_id='"+user_id+"'";
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

//删除用户购物车信息
Cart_info.del_item =  function(item_id, callback) {

    var sql = "delete from cart_info where cart_info.item_id='"+item_id+"'";
    console.log(sql);
    mysql.query(sql,function(err,results,fields){
        if(err){
            throw err;
        }else{
            console.log();
            callback(err,results,fields);
        }
    })
};
