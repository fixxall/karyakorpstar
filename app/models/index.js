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
db.room = require("../models/room.model.js")(sequelize, Sequelize);
db.building = require("../models/building.model.js")(sequelize, Sequelize);
db.locus = require("../models/locus.model.js")(sequelize, Sequelize);
db.fastingrecord = require("../models/fastingrecord.model.js")(sequelize, Sequelize);
db.commercerecord = require("../models/commercerecord.model.js")(sequelize, Sequelize);
db.config = require("../models/config.model.js")(sequelize, Sequelize);
db.role = require("../models/role.model.js")(sequelize, Sequelize);

db.room.hasMany(db.user);
db.user.belongsTo(db.room);

db.building.hasMany(db.room);
db.room.belongsTo(db.building);

db.locus.hasMany(db.building);
db.building.belongsTo(db.locus);

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

const User_Roles = sequelize.define('user_roles', {}, { timestamps: false });
db.user.belongsToMany(db.role, { through: User_Roles });
db.role.belongsToMany(db.user, { through: User_Roles });

module.exports = db;
