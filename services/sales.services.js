const salesModels = require("../models/sales.models");

const salesService = {
    getAll: async () => {
        return await salesModels.getAll();
    }
};

module.exports = salesService;