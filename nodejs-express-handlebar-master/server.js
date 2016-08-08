var express = require('express');
var app = express();
var expressHbs = require('express3-handlebars');

app.engine('hbs', expressHbs({extname:'hbs', defaultLayout:'main.hbs'}));
app.set('view engine', 'hbs');

app.get('/', function(req, res){
  res.render('index');
});

app.get('/simple', function(req, res){
  var data = {name: 'Gorilla'};
  res.render('simple', data);
});

app.get('/complex', function(req, res){
  var data = {
    name: 'Gorilla',
    address: {
      streetName: 'Broadway',
      streetNumber: '721',
      floor: 4,
      addressType: {
        typeName: 'residential'
      }
    }
  };
  res.render('complex', data);
});

app.get('/loop', function(req, res){
  var basketballPlayers = [
    {name: 'Lebron James', team: 'the Heat'},
    {name: 'Kevin Durant', team: 'the Thunder'},
    {name: 'Kobe Jordan',  team: 'the Lakers'}
  ];
  
  var days = [
    'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'
  ];
  
  var data = {
    basketballPlayers: basketballPlayers,
    days: days
  };
  
  res.render('loop', data);
});

app.get('/logic', function(req, res){
  var data = {
    upIsUp: true,
    downIsUp: false,
    skyIsBlue: "yes"
  };
  
  res.render('logic', data);
});

var serverIp = process.env.OPENSHIFT_PROCESS_IP || "localhost";
var serverPort = process.env.OPENSHIFT_PROCESS_PORT || 80;

app.listen(serverPort, serverIp, function(){
  console.log('listening on port '+serverPort)
});