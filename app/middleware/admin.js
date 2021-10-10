const db = require("../models");
const User = db.user;
const Role = db.role;

isFastingAdmin = (req, res, next) => {
    User.findOne({
            where: {
                npm: req.npm
            },
            include: {
                model: Role,
                attributes: ['id']
            }
    }).then(user => {
        let isAdmin = false;
        user.roles.forEach((role) => {
            if (role.id == 1) {
                isAdmin = true;
            }
        });

        if (!isAdmin){
            return res.status(403).send({
                message: "Unsufficient privilege!"
            });
        }
        next();
    });
};

isCommerceAdmin = (req, res, next) => {
    User.findOne({
            where: {
                npm: req.npm
            },
            include: {
                model: Role,
                attributes: ['id']
            }
    }).then(user => {
        let isAdmin = false;
        user.roles.forEach((role) => {
            if (role.id == 2) {
                isAdmin = true;
            }
        });

        if (!isAdmin){
            return res.status(403).send({
                message: "Unsufficient privilege!"
            });
        }
        next();
    });
};

const admin = {
    isFastingAdmin: isFastingAdmin,
    isCommerceAdmin: isCommerceAdmin
};
module.exports = admin;
