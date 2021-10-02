const controller = require("../controllers/auth.controller");
const { authJwt } = require("../middleware");
const { check } = require('express-validator')

module.exports = function(app) {
    app.use(function(req, res, next) {
        res.header(
            "Access-Control-Allow-Headers",
            "x-access-token, Origin, Content-Type, Accept"
        );
        next();
    });

    app.post("/api/auth/signin", [
        check('npm').isNumeric(),
        check('password').whitelist(['abcdef','0123456789'])
    ], controller.signin);

    app.post("/api/auth/changePassword", [
        authJwt.verifyToken,
        check('password').whitelist(['abcdef','0123456789']),
        check('newpassword').whitelist(['abcdef','0123456789'])
    ], controller.changePassword);
};