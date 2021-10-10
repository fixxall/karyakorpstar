module.exports = (sequelize, Sequelize) => {
    const Building = sequelize.define("buildings", {
        name: {
            type: Sequelize.STRING,
            unique: true
        }
    }, { timestamps: false });

    return Building;
};
