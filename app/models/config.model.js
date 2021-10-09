module.exports = (sequelize, Sequelize) => {
    const Config = sequelize.define("configs", {
        fastingopen: {
            type: Sequelize.BOOLEAN,
            allowNull: false,
            defaultValue: false
        },
        fastingdate: {
            type: Sequelize.STRING
        },
        commerceopen: {
            type: Sequelize.BOOLEAN,
            allowNull: false,
            defaultValue: false
        },
        commercedate: {
            type: Sequelize.STRING
        }
    });

    return Config;
};
