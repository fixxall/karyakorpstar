const controller = require("../controllers/user.controller");
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

    app.get("/api/user/profile", [authJwt.verifyToken], controller.profile);

    app.post("/api/user/update", [
        authJwt.verifyToken,
        check('room').isNumeric()
    ], controller.update);
};
