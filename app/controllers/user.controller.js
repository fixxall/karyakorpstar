const db = require("../models");
const User = db.user;
const Room = db.room;
const Building = db.building;
const Locus = db.locus;

const Op = db.Sequelize.Op;
const { validationResult } = require('express-validator');

exports.profile = (req, res) => {
    User.findOne({
        where: {npm: req.npm},
        include: {
            model: Room,
            attributes: ['number'],
            include: {
                model: Building,
                attributes: ['name'],
                include: {
                    model: Locus,
                    attributes: ['name']
                }
            }
        }
    }).then(user => {
        res.status(200).send({
            npm: user.npm,
            fullname: user.fullname,
            class: user.class,
            room: !user.room ? null : {
                string: (user.room.building.name + ' ' + user.room.number),
                number: user.room.number,
                building: user.room.building.name,
                locus: user.room.building.locuse.name
            }
        });
    }).catch(err => {
        res.status(500).send({ message: err.message });
    });
};

exports.update = (req, res) => {
    const errors = validationResult(req)
    if (!errors.isEmpty()) {
        return res.status(422).send({ message: "Invalid input", errors: errors.array() })
    }
    User.update({
        roomId: req.body.room
    },{ where:{npm: req.npm}}).then(user => {
        res.status(200).send({ message: "Updated successfully!" });
    }).catch(err => {
        res.status(500).send({ message: err.message });
    });
};
