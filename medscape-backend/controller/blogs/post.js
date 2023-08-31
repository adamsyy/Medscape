const Blogschema = require('../../model/Blog');

module.exports.post=async(req,res)=>{
    try{
        const {title,description,username,doctor}=req.body;
        const blog=new Blogschema({title,description,username,doctor});
        await blog.save();
        res.status(200).json({message:"Blog Posted Successfully"});
    }catch(err){
        res.status(500).json({message:err});
    }
}
