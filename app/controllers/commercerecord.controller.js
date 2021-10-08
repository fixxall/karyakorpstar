const db = require("../models");
const config = require("../config/auth.config");
const User = db.user;
const CommerceRecord = db.commercerecord;

const Op = db.Sequelize.Op;
const { validationResult } = require('express-validator');

exports.order = (req, res) => {
    const errors = validationResult(req)
    if (!errors.isEmpty()) {
        return res.status(422).send({ message: "Invalid input", errors: errors.array() })
    }
    CommerceRecord.create({
        npm: req.npm,
        productname: req.body.productname,
        quantity: req.body.quantity,
        price: req.body.price
    }).then(user => {
        res.status(200).send({ message: "Order created successfully!" });
    }).catch(err => {
        res.status(500).send({ message: err.message });
    });
};

exports.list = (req, res) => {
    CommerceRecord.findAll({
        include: {
            model: User,
            attributes: ['npm', 'fullname', 'year']
        }
    }).then( commercerecords => {
        res.status(200).send({data: commercerecords});
    }).catch(err => {
        res.status(500).send({ message: err.message });
    });
};

exports.clear = (req, res) => {
    CommerceRecord.destroy({ where: {}}).then( data => {
        res.status(200).send({ message: "Cleared successfully!" });
    }).catch(err => {
        res.status(500).send({ message: err.message });
    });
}
