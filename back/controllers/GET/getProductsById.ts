import { Request, Response } from "express";

import { db } from "../../global/db_connection";

import { Products } from "../../interfaces/products";

export default function ProductsById(req: Request, res: Response) {
  const id = [req.params.id];
  const sql = "SELECT * FROM products WHERE id = ?";
  db.query(sql, id, (err: Error, result: Products[]) => {
    if (err) throw err;

    res.send(result);
  });
}
