const mongoose = require("mongoose");
const Schema = mongoose.Schema;
const bcrypt = require("bcryptjs");

const Medicine_delivery = new Schema({

    name: {
        type: String,
        required: true,
        unique: true,
    },
    from: {
        type: String,
        required: true,
    },

    to: {
        type: String,
        required: true,
    },
   
    phone: {
        type: String,
        required: true,
    },

});



const Medicine_deliverySchema = mongoose.model("Medicine_delivery", Medicine_delivery);
module.exports = Medicine_deliverySchema;