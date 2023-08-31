const {nearby_hospitals}= require('../controller/nearby_hospitals/nearby_hospitals');

const router=require('express').Router();

router.get('/nearby_hospitals',nearby_hospitals);

module.exports=router;