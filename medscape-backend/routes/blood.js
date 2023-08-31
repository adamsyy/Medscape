const {get_blood}=require('../controller/get_blood');
const {post_blood}=require('../controller/post_blood');

const router=require('express').Router();

router.get('/get',get_blood);

router.post('/post',post_blood);

module.exports=router;