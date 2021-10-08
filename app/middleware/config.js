const db = require("../models");
const Config = db.config;

fastingIsOpen = (req, res, next) => {
    Config.findOne({where:{id:1}}).then(config => {
        if (!config.fastingopen){
            return res.status(403).send({
                message: "Route is closed!"
            });
        }
        next();
    });
};

commerceIsOpen = (req, res, next) => {
    Config.findOne({where:{id:1}}).then(config => {
        if (!config.commerceopen){
            return res.status(403).send({
                message: "Route is closed!"
            });
        }
        next();
    });
};

const config = {
    fastingIsOpen: fastingIsOpen
};
module.exports = config;
