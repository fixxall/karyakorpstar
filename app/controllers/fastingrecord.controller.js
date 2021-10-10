const db = require("../models");
const User = db.user;
const Room = db.room;
const Building = db.building;
const Locus = db.locus;
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
                attributes: ['fullname', 'class'],
                include: {
                    model: Room,
                    attributes: ['number'],
                    include: {
                        model: Building,
                        attributes: ['name'],
                        include: {
                            model: Locus,
                            attributes: ['name'],
                        }
                    }
                }
            }
        }).then(fastingrecords => {
            array = []
            fastingrecords.forEach((record) => {
                array.push({
                    npm: record.npm,
                    fullname: record.user.fullname,
                    class: record.user.class,
                    room: !record.user.room ? null : record.user.room.number,
                    building: !record.user.room ? null : record.user.room.building.name,
                    locus: !record.user.room ? null : record.user.room.building.locuse.name
                })
            });

            const csvWriter = createCsvWriter({
                path: `${__dirname}/../export/datapuasa_${config.fastingdate}.csv`,
                header: [
                    { id: "npm", title: "npm" },
                    { id: "fullname", title: "fullname" },
                    { id: "class", title: "class" },
                    { id: "room", title: "room" },
                    { id: "building", title: "building" },
                    { id: "locus", title: "locus" },
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
