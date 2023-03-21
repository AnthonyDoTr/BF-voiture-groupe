const routerCars = require("express").Router()
const carsController = require("../controllers/cars.controller")

routerCars
    .route("/")
        .get(carsController.getAll)
        .post(carsController.create)

routerCars
    .route('/:id')
        .get(carsController.getOne)
        .put(carsController.update)

module.exports = routerCars