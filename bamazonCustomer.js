var mysql = require("mysql");
var inquirer = require("inquirer");

var search = process.argv[2];


var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 8889,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "bamazon_db"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);

  connection.query("SELECT * FROM products WHERE stock >= 1", [search], function(err, res) {
    if (err) throw err;
    console.log(res);
    //connection.end();

  function idSearch() {
      inquirer
        .prompt({
        name: "ID",
        type: "input",
        message: "What's the ID of the product you would like to buy?"
    })
    .then(function(answer) {
      console.log(answer.ID);
      connection.query("SELECT * FROM products WHERE ?", { ID: answer.ID }, function(err, res) {
        console.log(
          "ID: " +
            res[0].ID +
            " || Product Name: " +
            res[0].product_name +
            " || Price: " +
            res[0].price +
            " || Stock: " +
            res[0].stock
        );
        })  
  });  
};
idSearch(); 
// connection.end();
  })
});