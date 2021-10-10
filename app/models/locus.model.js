module.exports = (sequelize, Sequelize) => {
    const Locus = sequelize.define("locuses", {
        name: {
            type: Sequelize.STRING,
            unique: true
        }
    }, { timestamps: false });

    return Locus;
};
