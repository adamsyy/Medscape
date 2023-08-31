const {get}=require('../controller/blogs/get');
const {post}=require('../controller/blogs/post');


const router=require('express').Router();

router.get('/get',get);
router.post('/post',post);

module.exports=router;