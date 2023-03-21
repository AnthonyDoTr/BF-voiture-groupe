const router = require("express").Router();

const routerSales = require("./sales.router");

router.use("/sales", routerSales);

module.exports = router;