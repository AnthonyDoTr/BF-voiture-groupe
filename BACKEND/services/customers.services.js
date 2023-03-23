const customersModel = require("../models/customers.models")

const customersService = {
  
    getAll : async () => {
        return await customersModel.getAll()
    },

    getOne : async (id) => {
        let customers = await customersModel.getOne(id)

        if(customers != undefined)
            return customers
        else
            return { errorMessage : `Le client avec l'id : ${id} n'existe pas` }
    },

    create : async (customers) => {
        let customersCreated = await customersModel.create(customers)
        return customersCreated
    }
    
}


module.exports = customersService