const routerCars = require("express").Router()
const carsController = require("../controllers/cars.controller")
const { bodyValidation } = require("../middlewares/body_validation.middleware")
const { CreateCarsValidator } = require("../validators/cars.validator")
const { authJwt } = require("../middlewares/auth.middleware")

routerCars
    .route("/")
    .get(authJwt("admin"), carsController.getAll)
    .post(bodyValidation(CreateCarsValidator), carsController.create)

routerCars
    .route('/:id')
    .get(carsController.getOne)
    .put(carsController.update)
    .delete(carsController.delete)

module.exports = routerCars