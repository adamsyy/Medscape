const mongoose = require("mongoose");
const Schema = mongoose.Schema;
const bcrypt = require("bcryptjs");

const Test = new Schema({

    key: {
        type: String ,
        required: true,
        unique: true,
    },
    url: {
        type: String,
        required: true,
    },

   
   

});



const TestSchema = mongoose.model("Test", Test);
module.exports = TestSchema;