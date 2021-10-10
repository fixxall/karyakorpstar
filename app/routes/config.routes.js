const controller = require("../controllers/config.controller");
const { authJwt, admin } = require("../middleware");
const { check } = require('express-validator')

module.exports = function(app) {
    app.use(function(req, res, next) {
        res.header(
            "Access-Control-Allow-Headers",
            "x-access-token, Origin, Content-Type, Accept"
        );
        next();
    });

    app.post("/api/config/openfasting", [
        authJwt.verifyToken,
        check('fastingdate').isLength({max: 29}),
        admin.isFastingAdmin
    ], controller.openfasting);

    app.post("/api/config/closefasting", [
        authJwt.verifyToken,
        admin.isFastingAdmin
    ], controller.closefasting);

    app.post("/api/config/opencommerce", [
        authJwt.verifyToken,
        check('commercedate').isLength({max: 29}),
        admin.isCommerceAdmin
    ], controller.opencommerce);

    app.post("/api/config/closecommerce", [
        authJwt.verifyToken,
        admin.isCommerceAdmin
    ], controller.closecommerce);
};
