const salesService = require("../services/sales.services");

const salesController = {
    getAll: async (req, res) => {
        let allSales = await salesService.getAll();
        res.json(allSales);
    }
};

module.exports = salesController;