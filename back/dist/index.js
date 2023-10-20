"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const insertInBasket_1 = __importDefault(require("./controllers/POST/insertInBasket"));
const updateCounterInBasket_1 = __importDefault(require("./controllers/POST/updateCounterInBasket"));
const showData_1 = __importDefault(require("./controllers/GET/showData"));
const deleteInBasket_1 = __importDefault(require("./controllers/DELETE/deleteInBasket"));
const deleteAllInBasket_1 = __importDefault(require("./controllers/DELETE/deleteAllInBasket"));
const getRestsByFilter_1 = __importDefault(require("./controllers/GET/getRestsByFilter"));
const getProductsById_1 = __importDefault(require("./controllers/GET/getProductsById"));
const app = (0, express_1.default)();
const port = 3001;
const cors = require("cors");
const bodyParser = require("body-parser");
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(cors());
////////////////////////////////BASKET////////////////////////////////////////
// inserting data into person's basket
app.post("/basket", insertInBasket_1.default);
app.post("/basket/update", updateCounterInBasket_1.default);
// get inf from basket
app.get("/basket", (req, res) => (0, showData_1.default)(req, res, `SELECT * FROM basket`));
app.get("/basket/update", (req, res) => (0, showData_1.default)(req, res, `SELECT * FROM basket`));
app.get("/basket/remove-all", (req, res) => (0, showData_1.default)(req, res, `SELECT * FROM basket`));
app.delete("/basket", deleteInBasket_1.default);
app.delete("/basket/remove-all", deleteAllInBasket_1.default);
////////////////////////////////////////////////////////////////////////////////
// Create a GET route to retrieve a record by ID
app.get("/record/:id", getProductsById_1.default);
app.get("/data", (req, res) => (0, showData_1.default)(req, res, `SELECT * FROM restaurants`));
// getting data from another database with categories
app.get("/restaurants", getRestsByFilter_1.default);
// getting all restaurants products
app.get("/products", (req, res) => (0, showData_1.default)(req, res, `SELECT * FROM products`));
app.listen(port, () => {
    console.log(`Server is running at http://localhost:${port}`);
});
