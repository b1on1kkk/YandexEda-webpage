import { Request, Response } from "express";

import { db } from "../../global/db_connection";

export default function ShowData(req: Request, res: Response, sql: string) {
  db.query(sql, (err: Error, data: any) => {
    if (err) return console.log(err);

    return res.json(data);
  });
}
