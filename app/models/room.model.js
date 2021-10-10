module.exports = (sequelize, Sequelize) => {
    const Room = sequelize.define("rooms", {
        number: {
            type: Sequelize.STRING
        }
    }, { timestamps: false });

    return Room;
};
