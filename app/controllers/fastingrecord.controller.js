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
    User.findAll().then(users => {
        FastingRecord.findAll().then( fastingrecords => {
            Config.findOne({where: {id: 1} }).then(config => {
                const data = []
                const listednpms = []
                fastingrecords.forEach(record => {
                    listednpms.push(record.npm);
                });
                users.forEach(user => {
                    if (listednpms.includes(user.npm)) {
                        data.push({npm: user.npm, fullname: user.fullname, registered: true});
                    }else {
                        data.push({npm: user.npm, fullname: user.fullname, registered: false});
                    }
                });
                const date = config.fastingdate;
                res.status(200).send({data: data, date: date});
            });
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
    FastingRecord.findAll({
        include: {
            model: User,
            attributes: ['npm', 'fullname', 'year']
        }
    }).then(fastingrecords => {
        array = []
        fastingrecords.forEach((record) => {
            array.push({id: record.id, npm: record.npm, fullname: record.user.fullname, year: record.user.year})
        });

        const csvWriter = createCsvWriter({
            path: `${__dirname}/export/temp.csv`,
            header: [
                { id: "id", title: "id" },
                { id: "npm", title: "npm" },
                { id: "fullname", title: "fullname" },
                { id: "year", title: "year" }
            ]
        });
        csvWriter.writeRecords(array).then(() => {
            res.setHeader('Content-disposition', 'attachment; filename=' + 'datapuasa.csv');
            const file = `${__dirname}/export/temp.csv`;
            res.download(file);
        });
    }).catch(err => {
        res.status(500).send({ message: err.message });
    });
};
