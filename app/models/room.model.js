module.exports = (sequelize, Sequelize) => {
    const Room = sequelize.define("rooms", {
        number: {
            type: Sequelize.STRING,
            unique: true
        }
    }, { timestamps: false });

    return Room;
};
