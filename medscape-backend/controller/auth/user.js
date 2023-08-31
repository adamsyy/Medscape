const UserSchema=require("../../model/User")

module.exports.user=async(req,res)=>{

    const {username,doctor_username}=req.body;
    try{
        const user=await UserSchema.findOne({username});
        if(!user){
            return res.status(400).json({
                message:"User does not exist",
                data:null,
            });
        }

        const doctor=await UserSchema.findOne({username:doctor_username});

        if(!doctor){
            return res.status(400).json({
                message:"Only doctors can use this service",
                data:null,
            });
        }

        res.status(200).json({
            success:true,
            message:"User found",
            user
        });
    }catch(error){
        console.log(error);
        res.status(500).json({
            success:false,
            message:"Internal server error",
            data:null,
        });
    }
}

   
