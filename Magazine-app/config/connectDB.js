const mongoose = require("mongoose");

const connectDB = async () => {
    try {
        let result = await mongoose.connect("mongodb://localhost:27017/DB_Magazine");
        console.log("database connected");
    } catch (err) {
        console.log("can not connect to database ", err);
    }
};
module.exports = connectDB;