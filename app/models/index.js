const config = require("../config/db.config.js");

const Sequelize = require("sequelize");
const sequelize = new Sequelize(
    config.DB,
    config.USER,
    config.PASSWORD, {
        host: config.HOST,
        dialect: config.dialect,
        operatorsAliases: false,
    }
);

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.user = require("../models/user.model.js")(sequelize, Sequelize);
db.fastingrecord = require("../models/fastingrecord.model.js")(sequelize, Sequelize);
db.commercerecord = require("../models/commercerecord.model.js")(sequelize, Sequelize);

db.user.hasOne(db.fastingrecord, {
  foreignKey: 'npm'
});
db.fastingrecord.belongsTo(db.user, {
  foreignKey: 'npm'
});

db.user.hasMany(db.commercerecord, {
  foreignKey: 'npm'
});
db.commercerecord.belongsTo(db.user, {
  foreignKey: 'npm'
});

module.exports = db;
