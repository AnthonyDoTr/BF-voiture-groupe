const routerSales = require("express").Router();
const salesController = require("../controllers/sales.controller");
const { bodyValidation } = require("../middlewares/body_validation.middleware");
const { CreateSalesValidator } = require("../validators/sales.validator");

routerSales
    .route("/")
    .get(salesController.getAll)
    .post(bodyValidation(CreateSalesValidator), salesController.create);


routerSales
    .route("/:id")
    .get(salesController.getOne)
    .delete(salesController.delete);

module.exports = routerSales;