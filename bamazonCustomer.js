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

// Show products function
function showProducts() {
    connection.query(
      // Querys the database for the id, product name, etc.
      "SELECT id, product_name, department_name, price, stock_quantity FROM products",
      function(err, res) {
        // The for loop goes through the results to pull product information
        for (var i = 0; i < res.length; i++) {
          console.log(
            "Item ID: " +
              res[i].id +
              "\nProduct: " +
              res[i].product_name +
              "\nDepartment: " +
              res[i].department_name +
              "\nPrice: " +
              res[i].price +
              "\nNumber in Stock: " + res[i].stock_quantity + 
              "\n=================================\n\n"
          );
        }
        promptUser();
      }
    );  
}
  
// Prompt user function  
function promptUser() {
    inquirer
      .prompt([
        {
          name: "product_name",
          type: "input",
          message: "What is the ID number of the product you would like to buy?"
        },
  
        {
          name: "stockQuantity",
          type: "input",
          message: "How many would you like to buy?"
        }
    ])
      .then(function(answer) {
        // Querys the database for all data
        var query = "SELECT * FROM products WHERE ?";
        // Attaches the user answer to the id from the database and then runs a function on that data
        connection.query(query, { id: answer.product_name }, function(
          err,
          res
        ) {
    
        var unitsAvailable;
        var unitPrice;
        // Units requested is pulled from the inquirer prompt
        var unitsRequested = answer.stockQuantity;
        // This for loop is pulling from the data stored in res 
            for (var i = 0; i < res.length; i++) {
            // The unitsAvailable var is being updated with the data from the for loop
            unitsAvailable = res[i].stock_quantity;
            // UnitPrice is doing the same thing as units Available
            unitPrice = res[i].price;
        }
        
        // Running if statement on the above data 
        if(answer.stockQuantity <= unitsAvailable){
            
            // Updating the table 
            var query = "UPDATE products SET ? WHERE ?";
            connection.query(
              query, 
              [
                {
                  stock_quantity: unitsAvailable-unitsRequested 
                },
                {
                  id: answer.product_name
                }
              ],
              function(err){
                if(err){
                  console.log(err);
                }
                console.log("Your order has been placed!");
                // To fixed rounds the decimals so they don't all display.  the (2) indicates how many decimal places there should be.
              console.log("The total for your purchase is: " + (unitPrice * answer.stockQuantity).toFixed(2));
              shopAgain();
              }
              
              
            );
        } else {
            console.log("Bummer! Unfortunately, we don't have enough of that item in stock.");
            shopAgain();
          }
  
        });
    });
}

// Shop again function
function shopAgain() {
    inquirer
      .prompt({
        name: "listProducts",
        type: "list",
        message: "Would you like to purchase another item? ",
        choices: ["Yes", "No"]
      })
      .then(function(answer) {
        if (answer.listProducts == "Yes") {
          showProducts();
        } else {
          console.log("Thanks for shopping! Come again soon!");
        }
    });
}

