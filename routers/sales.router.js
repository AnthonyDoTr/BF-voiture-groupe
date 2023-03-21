const routerSales = require("express").Router();
const salesController = require("../controllers/sales.controller");

routerSales
    .route("/")
    .get(salesController.getAll);

module.exports = routerSales;