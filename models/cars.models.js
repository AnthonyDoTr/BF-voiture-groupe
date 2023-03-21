const {getDbConnection} = require("./db")
const mssql = require("mssql")

const carsModel = {

    getAll : async () => {
        const db = await getDbConnection()
        const result = await db.query("select * from cars")
        db.close()
        return result.recordset
    }

}

module.exports = carsModel