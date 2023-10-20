import { Request, Response } from "express";

import { db } from "../../global/db_connection";

export default function InsertIntoBusket(req: Request, res: Response) {
  const data = req.body;

  db.query("INSERT INTO basket SET ?", [data], (error: Error) => {
    if (error) {
      res.status(500).send("Error inserting data into database");
    } else {
      res.send(data);
    }
  });
}
