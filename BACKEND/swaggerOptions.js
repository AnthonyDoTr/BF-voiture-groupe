const swaggerOptions = {
    /* The information that will be displayed on the Swagger UI. */
    info: {
        version: "0.0.1",
        title: "Api BF-Voiture",
        description: "Express JS - Swagger Api Doc"
    },
    //permet de dire ou se situe le projet en cours,
    //ici on indique la racine grâce à la constante __dirname
    baseDir: __dirname,
    //indique où se trouvent les contrôleurs et les
    // fichiers schémas que l’on verra par la suite.
    filesPattern: [
        "./controllers/*.js",
        "./models/swaggerModels/*.js"
    ],
    //indique l’url à entrée pour arriver sur la page de swagger
    swaggerUIPath: "/swagger",
    //on met true pour avoir l’interface graphique de
    // swagger, sans, la route ne donne qu’un /cannot get /swagger/
    exposeSwaggerUI: true,

    notRequiredAsNullable: false,

    security: {
        BasicAuth: {
            type: 'http',
            scheme: 'basic',
        },
    },


}

module.exports = swaggerOptions