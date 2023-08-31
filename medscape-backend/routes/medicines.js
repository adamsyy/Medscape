const {medicines_doctor} = require("../controller/medicines/doctor")
const {medicines_patient} = require("../controller/medicines/patient")
const {get_requests} = require("../controller/medicines/get_med_request")
const {post_requests} = require("../controller/medicines/post_medicine_request")

const router = require("express").Router()

router.post("/doctor", medicines_doctor)
router.post("/patient", medicines_patient)
router.get("/get_requests", get_requests)
router.post("/post_requests", post_requests)

module.exports = router