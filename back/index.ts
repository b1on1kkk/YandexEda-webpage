import express, { Express, Request, Response } from "express";

import InsertIntoBusket from "./controllers/POST/insertInBasket";
import UpdateCounterIntoBusket from "./controllers/POST/updateCounterInBasket";
import ShowData from "./controllers/GET/showData";
import DeleteInBasket from "./controllers/DELETE/deleteInBasket";
import DeleteAllInBasket from "./controllers/DELETE/deleteAllInBasket";
import RestsByFilter from "./controllers/GET/getRestsByFilter";
import ProductsById from "./controllers/GET/getProductsById";

const app: Express = express();
const port = 3001;

const cors = require("cors");
const bodyParser = require("body-parser");

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(cors());

////////////////////////////////POST////////////////////////////////////////

app.post("/basket", InsertIntoBusket);

app.post("/basket/update", UpdateCounterIntoBusket);

///////////////////////////////////////////////////////////////////////////

////////////////////////////////GET////////////////////////////////////////

app.get("/basket", (req: Request, res: Response) =>
  ShowData(req, res, `SELECT * FROM basket`)
);

app.get("/basket/update", (req: Request, res: Response) =>
  ShowData(req, res, `SELECT * FROM basket`)
);

app.get("/basket/remove-all", (req: Request, res: Response) =>
  ShowData(req, res, `SELECT * FROM basket`)
);

app.get("/record/:id", ProductsById);

app.get("/data", (req: Request, res: Response) =>
  ShowData(req, res, `SELECT * FROM restaurants`)
);

app.get("/restaurants", RestsByFilter);

app.get("/products", (req: Request, res: Response) =>
  ShowData(req, res, `SELECT * FROM products`)
);

///////////////////////////////////////////////////////////////////////////

////////////////////////////////DELETE////////////////////////////////////////

app.delete("/basket", DeleteInBasket);

app.delete("/basket/remove-all", DeleteAllInBasket);

///////////////////////////////////////////////////////////////////////////

app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});
