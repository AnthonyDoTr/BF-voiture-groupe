const salesModels = require("../models/sales.models");

const salesService = {
    getAll: async () => {
        return await salesModels.getAll();
    },

    getOne: async (id) => {
        let oneSale = await salesModels.getOne(id);

        if (oneSale != undefined) {
            return oneSale;
        } else {
            return { errorMessage: `La vente numéro: ${id} n'existe pas` };
        }
    }
};

module.exports = salesService;