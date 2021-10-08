module.exports = (sequelize, Sequelize) => {
    const CommerceRecord = sequelize.define("commerce_records", {
        npm: {
            type: Sequelize.STRING,
            allowNull: false,
            unique: true
        },
        productname: {
            type: Sequelize.STRING,
            allowNull: false
        },
        quantity: {
            type: Sequelize.INTEGER,
            allowNull: false
        },
        price: {
            type: Sequelize.INTEGER,
            allowNull: false
        },
        status: {
            type: Sequelize.STRING,
            defaultValue: "PENDING"
        }
    });

    return CommerceRecord;
};
