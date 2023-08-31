const mongoose = require("mongoose");
const Schema = mongoose.Schema;
const bcrypt = require("bcryptjs");

const Blood = new Schema({

    hospital: {
        type: String,
        required: true,
        unique: true,
    },
    blood: {
        type: String,
        required: true,
    },

    phone: {
        type: String,
        required: true,
    },
   
   

});



const BloodSchema = mongoose.model("Blood", Blood);
module.exports = BloodSchema;