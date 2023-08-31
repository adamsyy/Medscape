const BloodSchema=require('../model/Blood');

module.exports.get_blood=async(req,res)=>{
    try{
        const blood=await BloodSchema.find();
        res.status(200).json({message:"Blood Fetched Successfully",blood});
    }catch(err){
        res.status(500).json({message:"Internal Server Error"});
    }
}

