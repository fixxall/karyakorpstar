const db = require("../models");
const config = require("../config/auth.config");
const User = db.user;
const FastingRecord = db.fastingrecord;

const Op = db.Sequelize.Op;

exports.register = (req, res) => {
    FastingRecord.create({ npm: req.npm }).then(user => {
        res.status(200).send({ message: "Registered successfully!" });
    }).catch(err => {
        res.status(500).send({ message: err.message });
    });
};

exports.cancel = (req, res) => {
    FastingRecord.destroy({ where: {npm: req.npm }}).then(user => {
        res.status(200).send({ message: "Cancelled successfully!" });
    }).catch(err => {
        res.status(500).send({ message: err.message });
    });
};

exports.list = (req, res) => {
    User.findAll().then(users => {
        FastingRecord.findAll().then( fastingrecords => {
            const data = []
            const listednpms = []
            fastingrecords.forEach(record => {
                listednpms.push(record.npm);
            });
            users.forEach(user => {
                if (listednpms.includes(user.npm)) {
                  data.push({npm: user.npm, registered: true});
                }else {
                  data.push({npm: user.npm, registered: false});
                }
            });
            res.status(200).send({data: data});
        });
    }).catch(err => {
        res.status(500).send({ message: err.message });
    });
};
