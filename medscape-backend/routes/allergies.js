const {allergies_doctor}=require('../controller/allergies/doctor')
const {allergies_patient}=require('../controller/allergies/patient')

const router=require('express').Router()

router.post('/doctor',allergies_doctor)
router.post('/patient',allergies_patient)

module.exports=router