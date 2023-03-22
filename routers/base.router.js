const router = require("express").Router();

const routerSales = require("./sales.router");
const routerCars = require("./cars.router");
const routerCustomers = require("./customers.router");

router.use("/sales", routerSales);
router.use("/cars", routerCars);
router.use("/customers", routerCustomers);


module.exports = router;