"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const db_connection_1 = require("../../global/db_connection");
function InsertIntoBusket(req, res) {
    const data = req.body;
    db_connection_1.db.query("INSERT INTO basket SET ?", [data], (error) => {
        if (error) {
            res.status(500).send("Error inserting data into database");
        }
        else {
            res.send(data);
        }
    });
}
exports.default = InsertIntoBusket;
