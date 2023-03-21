const { getDbConnection } = require("./db");
const mssql = require("mssql");

const salesModels = {

    getAll: async () => {
        const db = await getDbConnection();
        const result = await db.query("select * from sales");
        db.close();
        return result.recordset;
    }
};

module.exports = salesModels;