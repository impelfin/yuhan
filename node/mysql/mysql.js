var mysql = require("sync-mysql");

var connection = new mysql({
		host : "192.168.0.49",
    port : "3306",
		user : "admin",
		password : "1234",
		database : "st_db",
});

// Select all rows from st_info table
let result = connection.query("SELECT * FROM st_info");
console.log(result);
