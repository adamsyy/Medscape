const mongoose = require("mongoose");
const Schema = mongoose.Schema;
const bcrypt = require("bcryptjs");

const User = new Schema({
    email: String,
    blood_group: String,
    username: {
        type: String,
        required: true,
        unique: true,
    },

    password: {
        type: String,
        required: true,
    },
    name: String,
    age: Number,
    link: String,
    image: String,
    isdoctor: {
        type: Boolean,
        default: false,

    },
    allergies: {
        type: [String],
        default: [],

    },
    operations: {
        type: [
            [String]
        ],
        default: [],
    },
    medicines: {
        default: [],
        type: [
            [String]
        ]
    },
    prescriptions: {
        default: [],
        type: [
            [String]
        ]
    },
    height: {
        type: Number,
        default: 0,
    },
    sex:String,
    weight: {
        type: Number,
        default: 0,
    },
    waist: {
        type: Number,
        default: 0,
    },
    healthscore:Number,
    zscore:Number,
    healthstatus:
    {
        type:String,
        default:""
    },
    bmi:Number,










});



const UserSchema = mongoose.model("User", User);
module.exports = UserSchema;