const carsModel = require("../models/cars.models")

const carsService = {

    getAll : async () => {
        return await carsModel.getAll()
    }

}

module.exports = carsService