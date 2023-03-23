const yup = require("yup")

const CreateCarsValidator = yup.object().shape({
    make : yup.string().trim().required().lowercase().min(5).max(20),
    model : yup.string().trim().required().lowercase().min(5).max(20),
    year : yup.number().required().positive().integer(),
    price : yup.number().required().positive(),
    quantity : yup.number().required().positive()
})


// const CreateCustomersValidator = yup.object().shape({
//     first_name : yup.string().trim().required().lowercase().min(2).max(20),
//     last_name : yup.string().trim().required().lowercase().min(2).max(20),
//     address : yup.string().trim().required().lowercase().min(6).max(100),
//     phone : yup.number().required().min(10).max(10)
// })

module.exports = {
    CreateCarsValidator
}