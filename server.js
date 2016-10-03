// Require all of my necessary modules
var express = require('express');
var bodyParser = require('body-parser');
var methodOverride = require(method-override);
var mysql = require('mysql');
var exphbs = require('express-handlebars');
var app = express(); // Create a variable to the express function

// If there is anything in the /public folder, then don't process it. Instead serve it staticly
app.use(express.static(__dirname + '/public'));

// 
app.use(bodyParser.urlencoded({ extended: false }))

// Override the POST method in the handlebars file so that it can DELETE instead
app.use(methodOverride('_method'));

// Set the rendering engine to Handlebars so we can use the handlebars file to view content
app.engine('handlebars', exphbs({
	defaultLayout: 'main'
}));

// Connect to my MySQL database so that I can run queries
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'veggies_db'
});

// If there is an error, then show me what it is
connection.connect(function(err) {
	if(err) throw err;
	return;
});

// If I connect successfully, then let me know what port I'm using
 console.log('connected as id ' + connection.threadId);
