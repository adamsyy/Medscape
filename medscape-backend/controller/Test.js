const TestSchema=require('../model/Test');

module.exports.test=async(req,res)=>{

    try{
        const {key,url}=req.body;
        const tests=await TestSchema({key,url});

        await tests.save();
        res.status(200).json({message:" Added Successfully",tests});
    }catch(err){
        res.status(500).json({message:err});
    }
}
