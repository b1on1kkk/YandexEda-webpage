"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const db_connection_1 = require("../../global/db_connection");
function DeleteIntoBusket(req, res) {
    const { id, data } = req.body;
    // Update data in MySQL table
    const query = "UPDATE basket SET counter = ? WHERE id = ?";
    const values = [data, id];
    db_connection_1.db.query(query, values, (error) => {
        if (error)
            res.status(500).json({ error: "Failed to update data" });
        else
            res.status(200).json({ message: "Data updated successfully" });
    });
}
exports.default = DeleteIntoBusket;
