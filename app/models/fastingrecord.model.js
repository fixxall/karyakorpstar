module.exports = (sequelize, Sequelize) => {
    const FastingRecord = sequelize.define("fasting_records", {
        npm: {
            type: Sequelize.STRING,
            allowNull: false,
            unique: true
        }
    });

    return FastingRecord;
};
