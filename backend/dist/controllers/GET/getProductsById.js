"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const db_connection_1 = require("../../global/db_connection");
function ProductsById(req, res) {
    const id = [req.params.id];
    const sql = "SELECT * FROM products WHERE id = ?";
    db_connection_1.db.query(sql, id, (err, result) => {
        if (err)
            throw err;
        res.send(result);
    });
}
exports.default = ProductsById;
