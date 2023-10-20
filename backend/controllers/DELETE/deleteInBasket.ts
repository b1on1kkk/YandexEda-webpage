import { Request, Response } from "express";

import { db } from "../../global/db_connection";

export default function DeleteInBasket(req: Request, res: Response) {
  const { id } = req.body;

  // Delete data from MySQL table
  db.query("DELETE FROM basket WHERE id = ?", [id], (error: Error) => {
    if (error) res.status(500).json({ error: "Failed to delete data" });
    else res.status(200).json({ message: "Data deleted successfully" });
  });
}
