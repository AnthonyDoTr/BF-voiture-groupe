const carsService = require("../services/cars.services")

const carsController = {

    /**
     * GET /bf_voiture/cars
     * @tags Cars
     * @summary Return All Cars
     * @return {array<Cars>} 200 - All Tracks Ok
     */
    getAll: async (req, res) => {
        let allCars = await carsService.getAll()
        res.json(allCars)
    },

    /**
     * GET /bf_voiture/cars/{id}
     * @tags Cars
     * @summary Return on cars thx to his id
     * @param {number} id.path.required -enum:1 -id of cars
     * @return {Cars} 200 - One Car Ok
     * @return 404 - Car not found
     */
    getOne: async (req, res, next) => {
        let id = req.params.id

        let oneCar = await carsService.getOne(id)

        if (oneCar.id != undefined) {
            res.json(oneCar)
        }
        else if (oneCar.errorMessage != undefined) {
            res.locals.message = oneCar
            next()
        }
        else {
            throw new Error("Une erreur business internet s'est produite... :( ")
        }
    },
    /**
     * POST /bf_voiture/cars
     * @tags Cars
     * @summary Create one car
     * @param {CreateCar} request.body.required - On Car Data For Create
     * @example request - création d'une voiture
     * {
     *   "name" : "92I Veron",
     *   "model" : "chiron",
     *   "year" : 1995,
     *    "price" : 9800000,
     *   "quantit" : 25
     * }
     */
    create: async (req, res, next) => {
        if (req.body.make == undefined || req.body.model == undefined || req.body.year == undefined
            || req.body.price == undefined || req.body.quantity == undefined) {
            throw new Error("Les parametres du body ne sont pas complet !")
        }

        //make, model, year, price, quantity
        let newCar = {
            id: req.body.id,
            make: req.body.make,
            model: req.body.model,
            year: req.body.year,
            price: req.body.price,
            quantiy: req.body.quantity
        }

        let newCarCreated = await carsService.create(newCar)

        res.json(newCarCreated)
    },

    /**
     * PUT /bf_voiture/cars/{id}
     * @tags Cars
     * @summary Update one Cars thx to his id 
     *  
     */
    update: async (req, res, next) => {
        let id = req.params.id
        let carToUpdate = await carsService.getOne(id)

        if (carToUpdate.id != undefined) {
            if (req.body.make != undefined)
                carToUpdate.make = req.body.make

            if (req.body.model != undefined)
                carToUpdate.model = req.body.model

            if (req.body.year != undefined)
                carToUpdate.year = req.body.year

            if (req.body.price != undefined)
                carToUpdate.price = req.body.price

            if (req.body.quantiy != undefined)
                carToUpdate.quantiy = req.body.quantiy
        }
        else if (carToUpdate.errorMessage != undefined) {
            res.locals.message = carToUpdate
            next()
        }
        else {
            throw new Error("Une erreur business internet s'est produite ... :((")
        }
    },

    /**
     * DELETE /bf_voiture/cars/{id}
     * @tags Cars
     * @summary Delete one cars thx to his id
     *  
     */
    delete: async (req, res, next) => {
        let id = req.params.id
        let carsToDeleted = await carsService.getOne(id)

        if (carsToDeleted.id != undefined) {
            let carsDel = await carsService.delete(id)

            if (carsDel.id != undefined) {
                res.json(carsDel)
            }
            else if (carsDel.errorMessage != undefined) {
                res.locals.message = carsDel
                next()
            }
        } else if (carsToDeleted.errorMessage != undefined) {
            res.locals.message = carsToDeleted
            next()
        } else {
            throw new Error("Un erreur est survenu...")
        }
    }

}

module.exports = carsController