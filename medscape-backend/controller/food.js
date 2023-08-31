const UserSchema = require("../model/User")

module.exports.food = async (req, res) => {
    const {patient_username } = req.body;
    try {
        const patient= await UserSchema.findOne({ username:patient_username });
        if (!patient) {
            return res.status(400).json({
                message: "Patient does not exist",
                data: null,
            });
        }
        var bmi=patient.bmi;
  

        var result=[];
        if(bmi<17){
food=["milk","rice","read meat","potatoes","salmon"];
        }
        else if(bmi>=17 && bmi<22.5){
food=["maize", "millet", "oats", "wheat", "brown","rice","fruits","vegetables"]
        }
        else if(bmi>=22.5 && bmi<30){
food=["fruits","vegetables","dairy products","milk"]
        }
        else{
food=["fruits","vegetables","dairy products","milk","whole grains","nuts","beans","legumes"]
        }

        res.status(200).json({

            success: true,
            message: "results are",
            food
        });

    }catch (error) {
        console.log(error);
        res.status(500).json({
            success: false,
            message: "Internal server error",
            data: null,
        });
    }

}
