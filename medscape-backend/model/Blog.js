const mongoose = require("mongoose");
const Schema = mongoose.Schema;
const bcrypt = require("bcryptjs");

const Blog = new Schema({

    username: {
        type: String,
        required: true,
        unique: true,
    },
    doctor: {
        type: String,
        required: true,
    },

    title: {
        type: String,
        required: true,
    },
   
    description: {
        type: String,
        required: true,
    },

});



const BlogSchema = mongoose.model("Blog", Blog);
module.exports = BlogSchema;