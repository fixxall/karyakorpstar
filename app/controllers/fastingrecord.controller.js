const db = require("../models");
const config = require("../config/auth.config");
const User = db.user;
const FastingRecord = db.fastingrecord;
const Config = db.config;

const Op = db.Sequelize.Op;
const csvwriter = require("csv-writer");
const createCsvWriter = csvwriter.createObjectCsvWriter;

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
    FastingRecord.findAll({
        include: {
            model: User,
            attributes: ['fullname', 'class']
        }
    }).then( fastingrecords => {
        Config.findOne({where: {id: 1} }).then(config => {
            const date = config.fastingdate;
            res.status(200).send({data: fastingrecords, date: date, isOpened: config.fastingopen});
        });
    }).catch(err => {
        res.status(500).send({ message: err.message });
    });
};

exports.clear = (req, res) => {
    FastingRecord.destroy({ where: {}}).then( data => {
        res.status(200).send({ message: "Cleared successfully!" });
    }).catch(err => {
        res.status(500).send({ message: err.message });
    });
};

exports.download = (req, res) => {
    Config.findOne({where: {id: 1} }).then(config => {
        FastingRecord.findAll({
            include: {
                model: User,
                attributes: ['fullname', 'class']
            }
        }).then(fastingrecords => {
            array = []
            fastingrecords.forEach((record) => {
                array.push({id: record.id, npm: record.npm, fullname: record.user.fullname, class: record.user.class})
            });

            const csvWriter = createCsvWriter({
                path: `${__dirname}/../export/datapuasa_${config.fastingdate}.csv`,
                header: [
                    { id: "id", title: "id" },
                    { id: "npm", title: "npm" },
                    { id: "fullname", title: "fullname" },
                    { id: "class", title: "class" }
                ]
            });
            csvWriter.writeRecords(array).then(() => {
                res.setHeader('Content-disposition', 'attachment; filename=' + 'datapuasa.csv');
                const file = `${__dirname}/../export/datapuasa_${config.fastingdate}.csv`;
                res.download(file);
            });
        });
    }).catch(err => {
        res.status(500).send({ message: err.message });
    });
};
