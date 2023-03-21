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
    }
};

module.exports = salesController;