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
    },

    update: async () => {

    },

    delete: async (req, res, next) => {
        let id = req.params.id;
        let salesToDeleted = await salesService.getOne(id);

        if (salesToDeleted.id != undefined) {
            let salesDel = await salesService.delete(id);

            if (salesDel.id != undefined) {
                res.json(salesDel);
            }

            else if (salesDel.errorMessage != undefined) {
                res.locals.message = salesDel;
                next();
            }
        } else if (salesToDeleted.errorMessage != undefined) {
            res.locals.message = salesToDeleted;
            next();
        } else {
            throw new Error("Une erreur est survenue..");
        }
    }
};

module.exports = salesController;