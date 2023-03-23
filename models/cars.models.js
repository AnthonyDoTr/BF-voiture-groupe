const { getDbConnection } = require("./db")
const mssql = require("mssql")

const carsModel = {

    getAll: async () => {
        const db = await getDbConnection()
        const result = await db.query("select * from cars")
        db.close()
        return result.recordset
    },

    getOne: async (id) => {
        let db
        try {
            db = await getDbConnection()

            const querySQL = 'SELECT * FROM cars WHERE id = @Id'

            const request = new mssql.Request(db)
            request.input('Id', mssql.Int, id)

            const result = await request.query(querySQL)

            if (result.recordset.length !== 1) {
                return null
            }
            return result.recordset[0]
        }
        finally {
            db?.close()
        }
    },

    create: async (newCar) => {
        let db
        try {
            db = await getDbConnection()
            const querySQL = 'INSERT INTO cars (make, model, year, price, quantity) '
                + 'OUTPUT inserted.id '
                + 'VALUES (@make, @model, @year, @price, @quantity)'

            const request = new mssql.Request(db)
            request.input('make', mssql.NVarChar, newCar.make)
            request.input('model', mssql.NVarChar, newCar.model)
            request.input('year', mssql.Int, newCar.year)
            request.input('price', mssql.Float, newCar.price)
            request.input('quantity', mssql.Int, newCar.quantity)

            const result = await request.query(querySQL)
            return result.recordset[0]
        }
        finally {
            db?.close()
        }
    },

    update: async (carToUpdate) => {
        let db
        try {
            db = await getDbConnection()

            const querySQL = 'UPDATE cars'
                + 'SET make = @make, model = @model, year = @year, price = @price, quantity = @quantity'
                + 'OUTPUT inserted id'
                + 'WHERE id = @id'

            const request = new mssql.Request(db)
            request.input('make', mssql.NVarChar, carToUpdate.make)
            request.input('model', mssql.NVarChar, carToUpdate.model)
            request.input('year', mssql.Date, carToUpdate.year)
            request.input('price', mssql.Float, carToUpdate.price)
            request.input('quantity', mssql.Int, carToUpdate.quantity)

            const result = await request.query(querySQL)
            return result.recordset[0]
        }
        finally {
            db?.close()
        }
    },

    delete: async (id) => {
        let db
        let carDelete;
        try {
            db = await getDbConnection()
            // carDelete = await this.getOne(id);
            const querySQL = 'DELETE FROM cars OUTPUT deleted.id where id = @id'

            const request = new mssql.Request(db)
            request.input('Id', mssql.Int, id)

            const result = await request.query(querySQL)

            return result.recordset[0];
        } finally {
            db?.close()
        }
    }

}

module.exports = carsModel