var  client = require('../database');
var  uid = require('../utils/uuid');//
function  Image(image) {
    this.image_url = image.image_url;
    this.id=image.id;
    this.p_medical_no=image.p_medical_no;
    this.mark = image.mark;
    this.mark_date = image.mark_date;
    this.mark_d_id = image.mark_d_id;
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
    var  image = {
        image_url: this.image_url,
        id:this.id,
        p_medical_no: this.p_medical_no ,
        upload_date:time.minute,
        mark:'0',
        mark_date:this.mark_date,
        mark_d_id:this.mark_d_id
    };
    uuid = uid.v4();
    var sql ="insert into image (image_id,p_medical_no,image_url,id,upload_date,mark,mark_date,mark_d_id) values(?,?,?,?,?,?,?,?)";

    mysql.query(sql,[uuid,image.p_medical_no,image.image_url,image.id,image.upload_date,image.mark,image.mark_date,image.mark_d_id],function(err,results,fields){
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
Image.findAllmyphoto = function find(p_id,callback){
    var sql ="select a.image_id,a.image_url,a.id from image a where a.id='"+p_id+"'";
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
Image.findmyphoto =  function  find(p_id,changepage,pagesizes,callback) {
    var sql ="select a.image_id,a.image_url,a.id from image a where a.id='"+p_id+"'LIMIT "+changepage+","+pagesizes;
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

//photo_list页面左侧栏显示图片
//Image.find_perImage = function (p_id,callback) {
//    var sql ="select a.p_name,b.* from t_patient_info a,image b where a.p_id=b.id and b.id='"+p_id+" ' order by b.upload_date desc";
//    console.log("详细信息"+sql);
//    mysql.query(sql, function (err, results, fields) {
//        if (err) {
//            throw err;
//        } else {
//            console.log(results);
//            callback(err, results, fields);
//        }
//    });
//};
//Image.findAllphoto获取预约病人的全部图片数量
Image.findAllphoto =  function  find(id,callback) {
    var sql ="select a.p_name,a.p_mobile,b.* from t_patient_info a,image b where a.p_id=b.id and b.id='"+id+"'";
    console.log("医生拉取预约病人的全部照片"+sql);
    mysql.query(sql,function(err,results,fields){
        if(err){
            throw err;
        }else{
            console.log(results.length);
            callback(err,results,fields);
        }
    })
};
//根据前端传过来的当前页码对图片进行分页查询：
Image.findphoto =  function  find(id,callback) {
    var sql ="select a.p_name,b.* from t_patient_info a,image b where a.p_id=b.id and b.id='"+id+"'" ;
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



//p_index页面，患者首页 查看所有已经被医生标注的图片：已完成

//Image.findAll获取已经被医生标记的图片的全部条数
Image.findAll = function findall(id,callback){
    var sql ="select a.*,b.p_dname from image a,t_doctor_info b where a.id = '"+id+"'and a.mark_d_id = b.d_doctor_id ";
    console.log("详细信息"+sql);
    mysql.query(sql,function(err,rows,fields){
        if(err){
            throw err;
        }else{
            console.log(rows.length);
            callback(err,rows,fields);
        }
    })
};
//Image.find 根据前端传过来的当前页码进行分页查询
Image.find = function find(id,changepage,callback){
    var sql ="select a.*,b.p_dname from image a,t_doctor_info b where a.id = '"+id+"'and a.mark_d_id =b.d_doctor_id LIMIT "+changepage+","+8;
        console.log("详细信息"+sql);
        console.log("后台打印每页的第一行"+changepage);
    mysql.query(sql,function(err,results,fields){
        if(err){
            throw err;
        }else{
            console.log(results);
            callback(err,results,fields);
        }
    })
};

//医生标记提交后将image表中的mark值置为1，另外添加本图片的标记时间mark_date
Image.update=function update(image_id,d_id,callback){
    var date = new Date();
    var time = {
        date: date,
        year : date.getFullYear(),
        month : date.getFullYear() + "-" + (date.getMonth() + 1),
        day : date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate(),
        minute : date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate() + " " +
        date.getHours() + ":" + (date.getMinutes() < 10 ? '0' + date.getMinutes() : date.getMinutes())+":"+(date.getSeconds() < 10 ? '0' + date.getSeconds() : date.getSeconds())
    };
    var sql="update image set image.mark=1 ,image.mark_date='"+time.minute+"',image.mark_d_id ='"+d_id+"'  where image.image_id='"+image_id+"'";
    console.log("更新image数据表中的mark和mark_date"+sql);
    console.log("处理时间"+time.minute);
    mysql.query(sql, function (err, results, fields) {
        if (err) {
            throw err;
        } else {
            console.log(results);
            callback(err, results, fields);
        }
    })
};

//预约处理，根据资料编号查询对应的资料
Image.findAllNO = function findAllNO(no,callback){
    var sql ="select image.image_id,image.image_url from image where  image.p_medical_no = '"+no+"' ";
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
