const carsService = require("../services/cars.services")

const carsController = {

    getAll : async (req, res) => {
        let allCars = await carsService.getAll()
        res.json(allCars)
    }

}

module.exports = carsController