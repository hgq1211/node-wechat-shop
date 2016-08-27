var express = require('express');
var router = express.Router();
var Redis=require('ioredis');
var async=require('async');
var redis=new Redis(6379,'127.0.0.1');
redis.set('people','bar');
  redis.get('people1',function(err,fooValue){
    console.log(fooValue);
  });
async.waterfall([
  function (callback) {
    redis.get('peple:2:home',callback);
  },
  function (home,callback) {
    redis.hget('locations',home,callback);
  },
    function(address,callback){
      async.parallel([
          function (callback){
            redis.exists('address:'+address,callback);
          },
          function(callback){
            redis.exists('backup.address:'+address,callback);
          },
      ], function(err,results){
            if(results[0]){
              console.log('kkkk¡£');
            }else{
              console.log('qqqqq');
            }
          })
    }
]);
/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

module.exports = router;
