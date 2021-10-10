const db = require("../models");
const config = require("../config/auth.config");
const User = db.user;
const Role = db.role;

const Op = db.Sequelize.Op;

var jwt = require("jsonwebtoken");
var bcrypt = require("bcryptjs");
const { validationResult } = require('express-validator');

exports.signin = (req, res) => {
    const errors = validationResult(req)
    if (!errors.isEmpty()) {
        return res.status(422).send({ message: "Invalid input", errors: errors.array() })
    }
    User.findOne({
            where: {
                npm: req.body.npm
            },
            include: {
                model: Role,
                attributes: ['id', 'name']
            }
        })
        .then(user => {
            if (!user) {
                return res.status(404).send({ message: "User Not found." });
            }
            var passwordIsValid = bcrypt.compareSync(
                req.body.password + req.body.npm,
                user.password
            );

            if (!passwordIsValid) {
                return res.status(401).send({
                    accessToken: null,
                    message: "Invalid Password!"
                });
            }

            var token = jwt.sign({ npm: user.npm }, config.secret, {
                expiresIn: 86400 // 24 hours
            });

            var isFastingAdmin = false;
            var isCommerceAdmin = false;
            user.roles.forEach((role) => {
                switch (role.id) {
                    case 1: isFastingAdmin = true; break;
                    case 2: isCommerceAdmin = true; break;
                }
            });


            res.status(200).send({
                npm: user.npm,
                // fullname: user.fullname,
                // class: user.class,
                isFastingAdmin: isFastingAdmin,
                isCommerceAdmin: isCommerceAdmin,
                accessToken: token
            });
        })
        .catch(err => {
            res.status(500).send({ message: err.message });
        });
};

exports.changePassword = (req, res) => {
    User.findOne({
        where: {
            npm: req.npm
        }
    }).then(user => {
        if (!user) {
            return res.status(404).send({ message: "User Not found." });
        }
        var passwordIsValid = bcrypt.compareSync(
            req.body.password+req.npm,
            user.password
        );

        if (!passwordIsValid) {
            return res.status(401).send({
                accessToken: null,
                message: "Invalid Password!"
            });
        } else {
            User.update({
                password: bcrypt.hashSync(req.body.newPassword, 8)
            }, {
                where: { npm: req.npm }
            }).then(user => {
                res.send({ message: "Password changed successfully!" });
            }).catch(err => {
                res.status(500).send({ message: err.message });
            });
        }


    }).catch(err => {
        res.status(500).send({ message: err.message });
    });
};
