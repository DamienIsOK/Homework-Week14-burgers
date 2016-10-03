/*var mysql      = require('mysql');
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
*/


INSERT INTO veggies_db.veggies (veggie_name) VALUES ('asparagus');
INSERT INTO veggies_db.veggies (veggie_name) VALUES ('brussels sprouts');
INSERT INTO veggies_db.veggies (veggie_name) VALUES ('tomatoes');
INSERT INTO veggies_db.veggies (veggie_name) VALUES ('cucumbers');