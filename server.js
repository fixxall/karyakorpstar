const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

const app = express();

// var corsOptions = {
//     origin: "http://localhost:8080"
// };

app.use(cors());//corsOptions));

// parse requests of content-type - application/json
app.use(bodyParser.json());

// parse requests of content-type - application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

const db = require("./app/models");

// db.sequelize.sync({ force: true }).then(() => {
//     console.log('Drop and Resync Db');
// // db.sequelize.sync().then(() => {
//     initial();
// });

const cron = require('node-cron');
const fsExtra = require('fs-extra')

cron.schedule('0 0 * * *', function() {
  console.log('---------------------');
  console.log('Running Cron Job');
  fsExtra.emptyDirSync('./app/controllers/export', err => {
    if (err) throw err;
  });
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

const User = db.user;
const Config = db.config;
const FastingRecord = db.fastingrecord;
const Role = db.role;

const {data} = require('./dummy.js');

function initial() {
    // data.forEach(record => {
    //     User.create({
    //         npm: record.npm,
    //         fullname: record.fullname,
    //         class: record.class,
    //         password: record.password,
    //     }).catch(err => {
    //         console.log(record.npm);
    //         console.log({ message: err.message });
    //     });
    // });

    // User.bulkCreate(data).then(x => {
    //     FastingRecord.bulkCreate([
    //         { npm: "1817101467" },
    //         { npm: "1817101468" },
    //         { npm: "2019101600" },
    //         { npm: "2019101601" },
    //         { npm: "2019101602" },
    //         { npm: "2019101609" }
    //     ]);
    //     Role.create({
    //         id: 1,
    //         name: "FASTING ADMIN"
    //     });
    //     User.findOne({ where: {npm: "1817101465"} }).then( user => {
    //         user.setRoles(1);
    //     }).catch(err => {
    //         console.log({ message: err.message });
    //     });
    // });
    // Config.create({
    //     id: 1,
    //     fastingopen: true,
    //     fastingdate: 'Sat, 09 Oct 2021',
    //     commerceopen: true,
    //     commercedate: 'Sat, 09 Oct 2021'
    // });
}
