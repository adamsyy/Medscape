const {test}= require('../controller/Test');

const router=require('express').Router();

router.post('/',test);

module.exports=router;

