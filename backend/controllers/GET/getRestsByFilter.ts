import { Request, Response } from "express";

import { db } from "../../global/db_connection";

export default function RestsByFilter(req: Request, res: Response) {
  const sql = "SELECT * FROM restaurants WHERE category = ?";
  const category = [req.query.category];
  db.query(sql, category, (err: Error, data: any) => {
    if (err) return console.log(err);

    return res.json(data);
  });
}
