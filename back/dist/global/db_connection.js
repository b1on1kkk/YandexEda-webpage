"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.db = void 0;
const mysql = require("mysql");
// Create a MySQL connection
exports.db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "yandexeda",
});
