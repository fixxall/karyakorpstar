const controller = require("../controllers/fastingrecord.controller");
const { authJwt, config } = require("../middleware");

module.exports = function(app) {
    app.use(function(req, res, next) {
        res.header(
            "Access-Control-Allow-Headers",
            "x-access-token, Origin, Content-Type, Accept"
        );
        next();
    });

    app.post("/api/fasting/register", [
        authJwt.verifyToken,
        config.fastingIsOpen
    ], controller.register);

    app.post("/api/fasting/cancel", [
        authJwt.verifyToken,
        config.fastingIsOpen
    ], controller.cancel);

    app.get("/api/fasting/list", [
        authJwt.verifyToken,
    ], controller.list);

    app.post("/api/fasting/clear", [
        authJwt.verifyToken
    ], controller.clear);

    app.get("/api/fasting/download", [
        authJwt.verifyToken
    ], controller.download);
};
