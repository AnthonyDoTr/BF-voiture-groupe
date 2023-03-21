const {getDbConnection} = require("./db")
const mssql = require("mssql")

const customersModel = {

    getAll : async () => {
        const db = await getDbConnection()
        const result = await db.query("select * from customers")
        db.close()
        return result.recordset
    },
    
    getOne : async (id) => {
        let db
        try {
            db = await getDbConnection()
            const querySQL = 'SELECT * FROM customers WHERE id = @Id'

            const request = new mssql.Request(db)
            request.input('Id', mssql.Int, id)

            const result = await request.query(querySQL)

            if (result.recordset.length !== 1)
                return null
            return result.recordset[0]
        }
        finally {
            db?.close()
        }
    },

    create : async (newCustomers) => {
        let db
        try {
            db = await getDbConnection()

            const querySQL = 'INSERT INTO customers (first_name, last_name, address, phone)'
                + ' OUTPUT inserted.id'
                + ' VALUES (@first_name, @last_name, @address, @phone)'

            const request = new mssql.Request(db)
            request.input('first_name', mssql.NVarChar, newCustomers.first_name)
            request.input('last_name', mssql.NVarChar, newCustomers.last_name)
            request.input('address', mssql.NVarChar, newCustomers.address)
            request.input('phone', mssql.NVarChar, newCustomers.phone)

            const result = await request.query(querySQL)
            return result.recordset[0]
        }
        finally {
            db?.close()
        }
    },
}


module.exports = customersModel