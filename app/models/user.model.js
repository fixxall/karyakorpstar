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
        class: {
            type: Sequelize.STRING
        },
        password: {
            type: Sequelize.STRING
        },
        room: {
            type: Sequelize.STRING
        }
    });

    return User;
};
