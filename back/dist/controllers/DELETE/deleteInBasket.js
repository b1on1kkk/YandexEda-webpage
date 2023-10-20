"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const db_connection_1 = require("../../global/db_connection");
function DeleteInBasket(req, res) {
    const { id } = req.body;
    // Delete data from MySQL table
    db_connection_1.db.query("DELETE FROM basket WHERE id = ?", [id], (error) => {
        if (error)
            res.status(500).json({ error: "Failed to delete data" });
        else
            res.status(200).json({ message: "Data deleted successfully" });
    });
}
exports.default = DeleteInBasket;
