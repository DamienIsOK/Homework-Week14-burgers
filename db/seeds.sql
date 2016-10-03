var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'veggies_db'
});

var veggies_arr = ['asparagus', 'brussels sprouts', 'tomatoes', 'cucumbers'];
var query = connection.query('INSERT INTO veggies (veggie_name) VALUES ?', [veggies_arr], function (error, result){
		if (error) throw error;
		console.log(result);
	});


-- for(var i = 0; i < veggies_arr; i++) {
-- 	INSERT INTO veggies (veggie_name) VALUES (veggies_arr[i]);
-- };