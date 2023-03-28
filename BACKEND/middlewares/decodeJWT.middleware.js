const { authService } = require("../services/auth.service")

const decodeJwtMiddleware = async (req, res, next) => {
    try {
        const jwtToken = req.headers.authorization.split(" ")[1]
        const decodedJwt = await authService.verifyToken(jwtToken)
        console.log(decodedJwt)

        req.user = decodedJwt
        next()
    } catch (error) {
        return res.status(403).json({ message: "Access denied: Invalid token" })
    }
}

module.exports = {
    decodeJwtMiddleware,
}