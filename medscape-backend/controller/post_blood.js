const BloodSchema=require('../model/Blood');

module.exports.post_blood=async(req,res)=>{

    try{
        const {hospital,blood,phone}=req.body;
        const bloods=await BloodSchema({hospital,blood,phone});

        await bloods.save();
        res.status(200).json({message:"Blood Added Successfully",bloods});
    }catch(err){
        res.status(500).json({message:err});
    }
}
