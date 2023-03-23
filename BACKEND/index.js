const express = require('express');
const dotenv = require("dotenv").config();
const app = express();
const port = process.env.PORT || 3001;


let { testDbConnection } = require("./models/db");
testDbConnection();

app.use(express.json());
app.use((req,res,next) => {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization');
    next();
})


const routerBase = require("./routers/base.router")
app.use("/bf_voiture", routerBase);

app.all("*", (req, res, next) => {

    if (res.locals.message != undefined) {
        responseError = {
            Message: res.locals.message,
            ErrorCode: 404
        };
    }

    res.status(404).json(responseError);
});


app.use((error, req, res, next) => {
    console.log("Error URL : ", req.url);
    console.log("Error Message : " + error);
    res.status(500).json({ "Error": req.url, "Message": "" + error, "ErrorCode": 500 });
});


app.listen(port, console.log(`server start in port ${port}`));