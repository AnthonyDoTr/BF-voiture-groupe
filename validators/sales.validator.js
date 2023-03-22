const yup = require("yup");

const CreateSalesValidator = yup.object().shape({
    customer_id: yup.number().required(),
    car_id: yup.number().required(),
    price: yup.number().required()
});

module.exports = {
    CreateSalesValidator
}