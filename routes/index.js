var express = require('express');
var router = express.Router();
var crypto = require('crypto');
var path = require('path');
var fs = require('fs');
var join = path.join;


router.get('/', function(req, res){
    res.render('index');
});
router.get('/Vshop', function(req, res){
    res.render('./Vshop');
});
router.get('/Vshop-homepage', function(req, res){
    res.render('./Vshop-homepage');
});
router.get('/explain', function(req, res){
    res.render('./explain');
});
module.exports = router;
