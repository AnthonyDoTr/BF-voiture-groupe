const customersService = require("../services/customers.services")

const customersController = {

    getAll : async (req, res) => {
        let allCustomers = await customersService.getAll()
        res.json(allCustomers)
    },

    getOne : async (req, res, next) => {
        let customers = await customersService.getOne(id)
        if(customers.id != undefined) {
            res.json(customers)
        }
        else if(customers.errorMessage != undefined) {
            res.locals.message = customers
            next()
        }
        else
            throw new Error("ERROR BUISSINES !!!")
    },

    create : async (req, res, next) => {
        let newCustomers = {
            first_name : req.dataValidate.first_name,
            last_name : req.dataValidate.last_name,
            address : req.dataValidate.address,
            phone : req.dataValidate.phone
        }
        let customersCreated = await customersService.create(newCustomers)
        res.json(customersCreated)
    },

}

module.exports = customersController