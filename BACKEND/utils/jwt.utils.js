const jwt = require("jsonwebtoken")

const JWT_SECRET = process.env.JWT_SECRET
const algorithm = "HS512"
const expiresIn = "2h" //https://github.com/vercel/ms

const generateToken = (insertedUser) => {


    return new Promise((resolve, reject) => {

        let { id, login } = insertedUser

        const options = {
            algorithm,
            expiresIn
        }

        jwt.sign({ id, login }, JWT_SECRET, options, (error, token) => {

            if (error) return reject(error)

            resolve(token)
        })

    })

}


const verifyToken = async (token) => {

    return new Promise((resolve, reject) => {
        jwt.verify(token, JWT_SECRET, (error, data) => {

            if (error) return reject(error)

            resolve(data)

        })
    })
}


module.exports = {
    generateToken,
    verifyToken
}