const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

const app = express();

var corsOptions = {
    origin: "http://localhost:8081"
};

app.use(cors(corsOptions));

// parse requests of content-type - application/json
app.use(bodyParser.json());

// parse requests of content-type - application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

const db = require("./app/models");

db.sequelize.sync({ force: true }).then(() => {
    console.log('Drop and Resync Db');
    initial();
});

// simple route
app.get("/", (req, res) => {
    res.json({ message: "Welcome to bezkoder application." });
});
require('./app/routes/auth.routes')(app);
require('./app/routes/user.routes')(app);
require('./app/routes/fastingrecord.routes')(app);
require('./app/routes/commercerecord.routes')(app);
require('./app/routes/config.routes')(app);

// set port, listen for requests
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}.`);
});

var bcrypt = require("bcryptjs");
const User = db.user;
const Config = db.config;
const FastingRecord = db.fastingrecord;

var crypto = require('crypto')
function sha1(data) {
    return crypto.createHash("sha1").update(data).digest("hex");
}

function initial() {
    User.bulkCreate([{
        id: 1,
        fullname: "Herisa Pratama Nur Baeti",
        npm: "2019101608",
        year: 2,
        password: bcrypt.hashSync(sha1("password")+"2019101608", 8)
    },{
        id: 2,
        fullname: "Herlambang Rafli Wicaksono",
        npm: "2019101609",
        year: 2,
        password: bcrypt.hashSync(sha1("password")+"2019101609", 8)
    },{
        id: 3,
        fullname: "Abidah Salsabila Putri Sanita",
        npm: "1918101609",
        year: 3,
        password: bcrypt.hashSync(sha1("password")+"1918101609", 8)
    }]);
    Config.create({
        id: 1,
        fastingopen: true,
        fastingdate: '2021-10-9'
    });
    FastingRecord.create({
        npm: "1918101609"
    })
}
