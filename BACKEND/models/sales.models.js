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

            if (result.recordset.length !== 1) {
                return null;
            }
            return result.recordset[0];
        }
        finally {
            db?.close();
        }
    },

    create: async (newSale) => {
        let db;

        try {
            db = await getDbConnection();

            const querySQL = 'INSERT INTO sales (customer_id, car_id, price)'
                + ' OUTPUT inserted.id'
                + ' VALUES (@customer_id, @car_id, @price)';

            const request = new mssql.Request(db);
            request.input('customer_id', mssql.Int, newSale.customer_id);
            request.input('car_id', mssql.Int, newSale.car_id);
            request.input('price', mssql.Float, newSale.price);

            const result = await request.query(querySQL);
            return result.recordset[0];
        }
        finally {
            db?.close();
        }
    },

    update: async () => {

    },

    delete: async (id) => {
        let db;
        try {
            db = await getDbConnection();
            const querySQL = 'DELETE FROM sales OUTPUT deleted.id WHERE id = @id';

            const request = new mssql.Request(db);
            request.input('Id', mssql.Int, id);

            const result = await request.query(querySQL);
            
            return result.recordset[0];
            
        } finally {
            db?.close();
        }
    }
};

module.exports = salesModels;