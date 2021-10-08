module.exports = (sequelize, Sequelize) => {
    const User = sequelize.define("users", {
        npm: {
            type: Sequelize.STRING,
            unique: true,
            primaryKey: true
        },
        fullname: {
            type: Sequelize.STRING
        },
        year: {
            type: Sequelize.INTEGER
        },
        password: {
            type: Sequelize.STRING
        }
    });

    return User;
};
