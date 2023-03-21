const routerSales = require("express").Router();
const salesController = require("../controllers/sales.controller");

routerSales
    .route("/")
    .get(salesController.getAll);
    

routerSales
    .route("/:id")
    .get(salesController.getOne);

module.exports = routerSales;