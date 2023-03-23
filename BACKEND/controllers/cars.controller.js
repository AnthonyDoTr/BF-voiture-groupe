const carsService = require("../services/cars.services")

const carsController = {

    getAll : async (req, res) => {
        let allCars = await carsService.getAll()
        res.json(allCars)
    },
    
    getOne : async(req,res,next) => {
        let id = req.params.id

        let oneCar = await carsService.getOne(id)

        if(oneCar.id != undefined){
            res.json(oneCar)
        }
        else if(oneCar.errorMessage !=undefined){
            res.locals.message = oneCar
            next()
        }
        else{
            throw new Error("Une erreur business internet s'est produite... :( ")
        }
    },
    create : async(req,res,next) => {
        if(req.body.make == undefined || req.body.model == undefined || req.body.year == undefined
            || req.body.price ==undefined || req.body.quantity == undefined )
            {
                throw new Error("Les parametres du body ne sont pas complet !")
            }

        //make, model, year, price, quantity
        let newCar = {
            id : req.body.id,
            make : req.body.make,
            model : req.body.model,
            year : req.body.year,
            price : req.body.price,
            quantiy : req.body.quantity
        }

        let newCarCreated = await carsService.create(newCar)

        res.json(newCarCreated)
    },

    update : async(req,res,next) => {
        let id = req.params.id
        let carToUpdate = await carsService.getOne(id)

        if(carToUpdate.id != undefined)
        {
            if(req.body.make !=undefined)
            carToUpdate.make = req.body.make

            if(req.body.model != undefined)
            carToUpdate.model = req.body.model

            if(req.body.year != undefined)
            carToUpdate.year = req.body.year

            if(req.body.price != undefined)
            carToUpdate.price = req.body.price

            if(req.body.quantiy != undefined)
            carToUpdate.quantiy = req.body.quantiy
        }
        else if(carToUpdate.errorMessage != undefined)
        {
            res.locals.message = carToUpdate
            next()
        }
        else
        {
            throw new Error("Une erreur business internet s'est produite ... :((")
        }
    },

    delete : async(req,res,next) => {
        let id = req.params.id
        let carsToDeleted = await carsService.getOne(id)

        if(carsToDeleted.id != undefined){
            let carsDel = await carsService.delete(id)

            if(carsDel.id !=undefined){
                res.json(carsDel)
            }
            else if(carsDel.errorMessage != undefined){
                res.locals.message = carsDel
                next()
            }
        }else if(carsToDeleted.errorMessage != undefined){
            res.locals.message = carsToDeleted
            next()
        }else{
            throw new Error("Un erreur est survenu...")
        }
    }

}

module.exports = carsController