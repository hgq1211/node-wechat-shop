var  client = require('../database');
var  uid = require('../utils/uuid');//
function  Image(image) {
    this.image_url = image.image_url;
    this.ablum=image.ablum;
    this.user_id=image.user_id;
    this.isPublic = image.isPublic;
    this.classify = image.classify;
}
var tableName = "image";
mysql = client.getDbCon();
module.exports = Image;
Image.prototype.save = function  save(callback) {
    var date = new Date();
    var time = {
        date: date,
        year : date.getFullYear(),
        month : date.getFullYear() + "-" + (date.getMonth() + 1),
        day : date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate(),
        minute : date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate() + " " +
        date.getHours() + ":" + (date.getMinutes() < 10 ? '0' + date.getMinutes() : date.getMinutes())+":"+date.getSeconds()
    };

    uuid = uid.v4();
    var sql ="insert into image (image_id,image_url,user_id,upload_date,isPublic,ablum,classify) values(?,?,?,?,?,?,?)";

    mysql.query(sql,[uuid,this.image_url,this.user_id,time.minute,this.isPublic,this.ablum,this.classify],function(err,results,fields){
        if (err) {
            throw err;
        } else {
            return callback(err, uuid, fields);
        }
    });
};
Image.get =  function (image_id, callback) {
    var sql = "select c.* from image c where c.image_id='"+image_id+"'";
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


//p_photos页面，患者查看自己上传的所有图片并进行分页处理
//查找出自己上传的所有图片数目
Image.userphoto_total = function(user_id,callback){
    var sql ="select a.name,b.* from t_patient_info a,image b where a.user_id=b.user_id and b.user_id='"+user_id+"'";
    console.log("找出患者自己上传的所有图片"+sql);
    mysql.query(sql,function(err,rows,fields){
        if(err){
            throw err;
        }else{
            console.log(rows.length);
            callback(err,rows,fields);
        }
    })
};
Image.userphoto_page =  function(user_id,changepage,pagesizes,callback) {
    var sql ="select a.* from image a where a.user_id='"+user_id+"'LIMIT "+changepage+","+pagesizes;
    console.log("患者详细的图片资料"+sql);
    mysql.query(sql,function(err,results,fields){
        if(err){
            throw err;
        }else{
            console.log(results);
            callback(err,results,fields);
        }
    })

};
//index界面获取最新的照片展示
Image.photo_new =  function(callback) {
    var sql ="select a.common_user,b.* from t_patient_info a,image b where b.isPublic='1' group by b.upload_date desc ";
    mysql.query(sql,function(err,results,fields){
        if(err){
            throw err;
        }else{
            console.log(results.length);
            callback(err,results,fields);
        }
    })
};

//预约处理，根据资料编号查询对应的资料
Image.pre_ablum = function(ablum,callback){
    var sql ="select image.image_id,image.image_url from image where  image.ablum = '"+ablum+"' ";
    console.log("详细信息"+sql);
    mysql.query(sql,function(err,results,fields){
        if(err){
            throw err;
        }else{
            console.log(results);
            callback(err,results,fields);
        }
    })
};
//查询某个人的图像分类信息
Image.classify=function(id,callback){
    var sql ="select distinct(image.classify)as classify from image where image.user_id='"+id+"' ";
    console.log("详细信息"+sql);
    mysql.query(sql,function(err,results,fields){
        if(err){
            throw err;
        }else{
            console.log(results);
            callback(err,results,fields);
        }
    })
};
//更细ispublic字段
Image.ispublic=function(id,callback){
    var sql ="update image set image.ispublic=0  where image.user_id='"+id+"' ";
    console.log("详细信息"+sql);
    mysql.query(sql,function(err,results,fields){
        if(err){
            throw err;
        }else{
            console.log(results);
            callback(err,results,fields);
        }
    })
};