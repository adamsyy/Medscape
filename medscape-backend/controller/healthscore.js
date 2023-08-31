const UserSchema = require("../model/User")

module.exports.add_healthscore = async (req, res) => {
    const { patient_username, height, weight, waist, sex } = req.body;
    try {
        const patient = await UserSchema.findOne({ username: patient_username });
        if (!patient) {
            return res.status(400).json({
                message: "Patient does not exist",
                data: null,
            });
        }  

        var new_height = height / 100;
    
        var bmi = weight / (new_height * new_height);
  
        //convert waist to m from cm50/169
        var new_waist = waist / 100;
      

        var absi = new_waist ;
       // console.log("waist",waist);
absi=absi/Math.pow(bmi, 0.66);       
absi=absi/Math.pow(new_height, 0.5);


        //find absi mean for that age and sex
        var absi_mean = 0;
        
        var abse_sd = 0;
        if(sex=="male"){
            absi_mean=0.078;
            abse_sd=0.0038;

        }else{
            absi_mean=0.077;
            abse_sd=0.0039;
        }


       

   
        var z_score= (absi - absi_mean) / abse_sd;
       // console.log(z_score);
 
 
       patient.healthscore = Math.abs(z_score);
       patient.zscore = z_score;
       patient.height = height;
         patient.weight = weight;
         patient.waist = waist;
    
        var healthstatus="";
        if(z_score<-0.868){
            healthstatus="Very excellent health";
        }
        else if(z_score>=-0.868&&z_score<-0.272){
            healthstatus="normal health";
        }
        else if(z_score>=-0.272&&z_score<0.229){
            healthstatus="borderline health";
        }
        else if(z_score>=0.229&&z_score<0.798){
            healthstatus="at risk of health problems";
        }
        else if(z_score>=0.798){
            healthstatus="extremely high risk of health problems";
        }

        patient.healthstatus=healthstatus;
        await patient.save()
       
        // patient.healthscore=z_score;

        
        // await patient.save();

        res.status(200).json({

            success: true,
            message: "healthscore added successfully",
            patient
        });

    } catch (error) {
        console.log(error);
        res.status(500).json({
            success: false,
            message: "Internal server error",
            data: error,
        });
    }

}




