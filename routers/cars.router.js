const routerCars = require("express").Router()
const carsController = require("../controllers/cars.controller")

routerCars
    .route("/")
        .get(carsController.getAll)

module.exports = routerCars