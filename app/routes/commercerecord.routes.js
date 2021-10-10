const controller = require("../controllers/commercerecord.controller");
const { authJwt, config, admin } = require("../middleware");
const { check } = require('express-validator')

module.exports = function(app) {
    app.use(function(req, res, next) {
        res.header(
            "Access-Control-Allow-Headers",
            "x-access-token, Origin, Content-Type, Accept"
        );
        next();
    });

    app.post("/api/commerce/order", [
        authJwt.verifyToken,
        config.commerceIsOpen,
        check('productname').isLength({ max:40 }),
        check('quantity').isNumeric(),
        check('price').isNumeric()
    ], controller.order);

    app.get("/api/commerce/list", [authJwt.verifyToken], controller.list);

    app.get("/api/commerce/all", [
        authJwt.verifyToken,
        admin.isCommerceAdmin
    ], controller.all);

    app.post("/api/commerce/admit", [
        authJwt.verifyToken,
        admin.isCommerceAdmin
    ], controller.admit);

    app.post("/api/commerce/deny", [
        authJwt.verifyToken,
        admin.isCommerceAdmin
    ], controller.deny);

    app.post("/api/commerce/modify", [
        authJwt.verifyToken,
        admin.isCommerceAdmin,
        check('id').isNumeric(),
        check('quantity').isNumeric(),
        check('price').isNumeric()
    ], controller.modify);

    app.post("/api/commerce/clear", [
        authJwt.verifyToken,
        admin.isCommerceAdmin
    ], controller.clear);
};
