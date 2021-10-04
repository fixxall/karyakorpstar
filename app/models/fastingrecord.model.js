module.exports = (sequelize, Sequelize) => {
    const User = sequelize.define("fasting_records", {
        npm: {
            type: Sequelize.STRING,
            allowNull: false,
            unique: true
        }
    });

    return User;
};