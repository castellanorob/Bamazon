// Requiring inquirer and mysql
var mysql = require("mysql");
var inquirer = require("inquirer");

// Creating a connection to mysql
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
  
    // Your username
    user: "root",
  
    // Your password
    password: "",
    database: "bamazon"
});
  
connection.connect(function(err) {
  if (err) throw err;
  showProducts();
});

// Displaying the products table
function showProducts() {
  console.log("Selecting all products...\n");
  connection.query("SELECT * FROM products", function(err, res) {
      if (err) throw err;
      // Log all results of the SELECT statement
      console.log(res);
      connection.end();
    });
}

