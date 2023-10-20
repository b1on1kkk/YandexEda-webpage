import { Request, Response } from "express";

import { db } from "../../global/db_connection";

export default function UpdateCounterIntoBusket(req: Request, res: Response) {
  const { id, data } = req.body;

  // Update data in MySQL table
  const query = "UPDATE basket SET counter = ? WHERE id = ?";
  const values = [data, id];

  db.query(query, values, (error: Error) => {
    if (error) res.status(500).json({ error: "Failed to update data" });
    else res.status(200).json({ message: "Data updated successfully" });
  });
}
