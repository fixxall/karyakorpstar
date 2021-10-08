const db = require("../models");
const config = require("../config/auth.config");
const Config = db.config;

const Op = db.Sequelize.Op;
const { validationResult } = require('express-validator');

exports.openfasting = (req, res) => {
    const errors = validationResult(req)
    if (!errors.isEmpty()) {
        return res.status(422).send({ message: "Invalid input", errors: errors.array() })
    }
    Config.update({
        fastingopen: true,
        fastingdate: req.body.fastingdate
    },{ where:{id: 1}}).then(user => {
        res.status(200).send({ message: "Opened successfully!" });
    }).catch(err => {
        res.status(500).send({ message: err.message });
    });
};

exports.closefasting = (req, res) => {
    Config.update({
        fastingopen: false,
        fastingdate: '1970-01-01'
    },{ where:{id: 1}}).then(user => {
        res.status(200).send({ message: "Closed successfully!" });
    }).catch(err => {
        res.status(500).send({ message: err.message });
    });
};
