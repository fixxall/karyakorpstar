const controller = require("../controllers/commercerecord.controller");
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

    app.post("/api/commerce/order", [
        authJwt.verifyToken,
        check('productname').isLength({ max:40 }),
        check('quantity').isNumeric(),
        check('price').isNumeric()
    ], controller.order);

    app.get("/api/commerce/list", [authJwt.verifyToken], controller.list);

    app.post("/api/commerce/clear", [authJwt.verifyToken], controller.clear);
};
