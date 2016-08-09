var express = require('express');
var router = express.Router();
var crypto = require('crypto');
var config = require('../config');

var path = require('path');
var fs = require('fs');
var join = path.join;
var http = require('http');
var querystring = require('querystring');
var debug = require('debug')('nodeJSDemo:http');


router.get('/',function(req,res){
    res.render('index', {
        title: '找回密码和'
    });
});

module.exports = router;
