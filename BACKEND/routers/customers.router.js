const routerCustomers = require("express").Router()
const customersController = require('../controllers/customers.controller')
const { bodyValidation } = require("../middlewares/body_validation.middleware")
const { CreateCustomersValidator } = require("../validators/customers.validator")

routerCustomers
    .route("/")
        .get(customersController.getAll)
        .post(bodyValidation(CreateCustomersValidator), customersController.create)

routerCustomers
    .route("/:id")
        .get(customersController.getOne)


module.exports = routerCustomers