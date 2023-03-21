const salesService = require("../services/sales.services");

const salesController = {
    getAll: async (req, res) => {
        let allSales = await salesService.getAll();
        res.json(allSales);
    },

    getOne: async (req, res, next) => {
        let id = req.params.id;

        let oneSale = await salesService.getOne(id);

        if (oneSale.id != undefined) {
            res.json(oneSale);
        } else if (oneSale.errorMessage != undefined) {
            res.locals.message = oneSale;
            next();
        } else {
            throw new Error("Une erreur est survenue ...");
        }
    },

    create: async (req, res, next) => {

        let newSale = {
            customer_id: req.dataValidate.customer_id,
            car_id: req.dataValidate.car_id,
            price: req.dataValidate.price,
        };

        let newSaleCreated = await salesService.create(newSale);

        res.json(newSaleCreated);
    }
};

module.exports = salesController;