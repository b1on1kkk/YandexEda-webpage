import { Request, Response } from "express";

import { db } from "../../global/db_connection";

import { Restaurants } from "../../interfaces/restaurants";

export default function RestsByFilter(req: Request, res: Response) {
  const sql = "SELECT * FROM restaurants WHERE category = ?";
  const category = [req.query.category];
  db.query(sql, category, (err: Error, data: Restaurants[]) => {
    if (err) return console.log(err);

    return res.json(data);
  });
}
