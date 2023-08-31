const {operations_doctor} = require("../controller/operations/doctor")

const router = require("express").Router()

router.post("/doctor", operations_doctor)

module.exports = router