"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const db_connection_1 = require("../../global/db_connection");
function RestsByFilter(req, res) {
    const sql = "SELECT * FROM restaurants WHERE category = ?";
    const category = [req.query.category];
    db_connection_1.db.query(sql, category, (err, data) => {
        if (err)
            return console.log(err);
        return res.json(data);
    });
}
exports.default = RestsByFilter;
