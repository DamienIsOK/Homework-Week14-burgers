var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'veggies_db'
});

CREATE DATABASE veggies_db;
USE veggies_db

CREATE TABLE veggies
(
id int NOT NULL AUTO_INCREMENT,
veggie_name VARCHAR(255) NOT NULL,
devoured BOOLEAN NOT NULL DEFAULT 0,
date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (id)
);