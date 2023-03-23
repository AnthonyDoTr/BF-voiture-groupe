const carsModel = require('../models/cars.models')

const carsService = {
    getAll : async () => {
        return await carsModel.getAll()
    },

    getOne : async(id) => {
        let oneCar = await carsModel.getOne(id)

        if(oneCar != undefined){
            return oneCar
        }else{
            return {errorMessage : `La voiture numéro : ${id} n'existe pas `}
        }
    },
    create : async(newCar) => {
        let newCarCreated = await carsModel.create(newCar)
        return newCarCreated
    },
    update : async(carToUpdate) =>{
        let upEmp = await carsModel.update(carToUpdate)
        return upEmp
    },

    delete: async(id) => {
        let deletedCars = await carsModel.delete(id)
        console.log(deletedCars);

        if(deletedCars.id != undefined) {

            return deletedCars
        }else{
            return { errorMessage : `La voiutre numéro ${id} n'existe pas`}
        }
    }
    

}

module.exports = carsService