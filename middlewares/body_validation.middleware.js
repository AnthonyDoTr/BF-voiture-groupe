


const bodyValidation = (yupValidator) => {

    return (req, res, next) => {
        yupValidator.noUnknown().validate(req.body, {}).then((dataValidate) => {

            req.dataValidate = dataValidate;
            next();
        })
            .catch((error) => {
                res.status(400).json(error.errors);
            });
    };
};

module.exports = {
    bodyValidation
};