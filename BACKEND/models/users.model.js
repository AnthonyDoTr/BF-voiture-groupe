const { getDbConnection } = require("./db")
const mssql = require("mssql")

const usersModels = {

    getAll: async () => {
        const db = await getDbConnection()
        const result = await db.query("select * from Users")
        db.close()
    },

    getOne: async (id) => {
        let db
        try {
            db = await getDbConnection()
            const querySQL = 'SELECT * FROM Users where id =@id'

            const request = new mssql.Request(db)
            request.input('Id', mssql.Int, id)

            const result = await request.query(querySQL)

            if (result.recordset.length !== 1) {
                return null
            }
            return result.recordset[0]
        } finally {
            db?.close()
        }
    },

    getOneByLogin: async (login) => {
        let db
        try {
            db = await getDbConnection()
            const querySQL = 'SELECT * FROM Users where login =@login'

            const request = new mssql.Request(db)
            request.input('login', mssql.VarChar, login)

            const result = await request.query(querySQL)

            if (result.recordset.length !== 1) {
                return null
            }
            return result.recordset[0]
        } finally {
            db?.close()
        }
    },

    create: async (newUser) => {
        let db;

        try {
            db = await getDbConnection();

            const querySQL = 'INSERT INTO Users (login, password,role)'
                + ' OUTPUT inserted.id'
                + ' VALUES (@login, @password,@role)';

            const request = new mssql.Request(db);
            request.input('login', mssql.VarChar, newUser.login);
            request.input('password', mssql.VarChar, newUser.password);
            request.input('role', mssql.VarChar, newUser.role);

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
            const querySQL = 'DELETE FROM Users OUTPUT deleted.id WHERE id = @id';

            const request = new mssql.Request(db);
            request.input('Id', mssql.Int, id);

            const result = await request.query(querySQL);

            return result.recordset[0];

        } finally {
            db?.close();
        }
    }

}


module.exports = {
    usersModels
}