const mongoose = require("mongoose");
const schema = mongoose.Schema;

const articleSchema = new schema({
    nameArt: {
        type: String,
        required : true,

    },
    textArt: {
        type: String,
        required : true,

    },
    writer: {
        type: String,

    },
    imgArt:{
        type: String,
        required : true,    
        
    }
});
module.exports = Article = mongoose.model("article", articleSchema)