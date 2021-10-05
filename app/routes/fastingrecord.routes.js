const controller = require("../controllers/fastingrecord.controller");
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

    app.post("/api/fasting/register", [authJwt.verifyToken], controller.register);

    app.post("/api/fasting/cancel", [authJwt.verifyToken], controller.cancel);

    app.get("/api/fasting/list", [authJwt.verifyToken], controller.list);
};
