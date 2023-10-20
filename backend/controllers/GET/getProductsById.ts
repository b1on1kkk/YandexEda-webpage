import { Request, Response } from "express";

import { db } from "../../global/db_connection";

export default function ProductsById(req: Request, res: Response) {
  const id = [req.params.id];
  const sql = "SELECT * FROM products WHERE id = ?";
  db.query(sql, id, (err: Error, result: any) => {
    if (err) throw err;

    res.send(result);
  });
}
