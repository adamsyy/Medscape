
const {prescriptions_doctor} = require("../controller/prescriptions/doctor")

const router = require("express").Router()

router.post("/doctor", prescriptions_doctor)

module.exports = router