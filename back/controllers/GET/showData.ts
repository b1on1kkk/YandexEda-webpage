import { Request, Response } from "express";

import { db } from "../../global/db_connection";

import { Basket } from "../../interfaces/basket";
import { Restaurants } from "../../interfaces/restaurants";
import { Products } from "../../interfaces/products";

export default function ShowData(req: Request, res: Response, sql: string) {
  db.query(sql, (err: Error, data: Basket[] | Restaurants[] | Products[]) => {
    if (err) return console.log(err);

    return res.json(data);
  });
}
