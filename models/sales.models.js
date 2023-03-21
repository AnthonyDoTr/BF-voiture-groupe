const { getDbConnection } = require("./db");
const mssql = require("mssql");

const salesModels = {

    getAll: async () => {
        const db = await getDbConnection();
        const result = await db.query("select * from sales");
        db.close();
        return result.recordset;
    },

    getOne: async (id) => {
        let db;
        try {
            db = await getDbConnection();
            const querySQL = 'SELECT * FROM sales where id = @id';

            const request = new mssql.Request(db);
            request.input('Id', mssql.Int, id);

            const result = await request.query(querySQL);

            if(result.recordset.length !== 1) {
                return null;
            }
            return result.recordset[0];
        }
        finally {
            db?.close();
        }
    }
};

module.exports = salesModels;