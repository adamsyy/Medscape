const Blogschema = require('../../model/Blog');

module.exports.get=async(req,res)=>{
    try{
      
const blogs=await Blogschema.find();    

res.status(200).json({message:"Blogs Fetched Successfully",blogs});



    }catch(err){
        res.status(500).json({message:"Internal Server Error"});
    }
}
