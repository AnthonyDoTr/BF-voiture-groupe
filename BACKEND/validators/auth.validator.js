const yup = require("yup")

const RegisterUserValidator = yup.object().shape({
    login: yup.string().trim().required().lowercase().min(2).max(20),
    password: yup.string().trim().required().min(4).max(25),
    role: yup.string().trim().required().min(4).max(10),
})


const AuthUserValidator = yup.object().shape({
    login: yup.string().trim().required().lowercase().min(2).max(20),
    password: yup.string().trim().required().min(4).max(25),
})


module.exports = {
    RegisterUserValidator,
    AuthUserValidator
}