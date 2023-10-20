import { Request, Response } from "express";

import { db } from "../../global/db_connection";

export default function DeleteAllInBasket(req: Request, res: Response) {
  // Delete all data from MySQL table
  db.query("TRUNCATE TABLE basket", (error: Error) => {
    if (error) res.status(500).json({ error: "Failed to delete data" });
    else res.status(200).json({ message: "Data deleted successfully" });
  });
}
