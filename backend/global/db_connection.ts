const mysql = require("mysql");

// Create a MySQL connection
export const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "yandexeda",
});
