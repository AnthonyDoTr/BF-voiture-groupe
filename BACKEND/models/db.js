const config = {
    user: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD,
    server: 'localhost',
    database: 'bf_voiture',
    options: {
        trustServerCertificate: true,
    }
};

const mssql = require("mssql");

const getDbConnection = async () => {
    db = await mssql.connect(config);
    return db;
};

const testDbConnection = async () => {
    try {
        const db = await getDbConnection();
        db.close();
        console.log("Connection DB - OK");
    }

    catch (error) {
        console.log("Connection DB - ERROR");
        console.error(error.message);

    }
};

module.exports = {
    getDbConnection,
    testDbConnection
};