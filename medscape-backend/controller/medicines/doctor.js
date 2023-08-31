const UserSchema = require("../../model/User")

module.exports.medicines_doctor = async (req, res) => {
    const { doctor_username,medicines,patient_username } = req.body;
    try {
        const doctor = await UserSchema.findOne({ username:doctor_username });
        if (!doctor) {
            return res.status(400).json({
                message: "Doctor does not exist",
                data: null,
            });
        }


        if (doctor.isdoctor === false) {
            return res.status(401).json({
                message: "User is not a doctor",
                data: null,
            });
        }
        const patient = await UserSchema.findOne({ patient_username });
        if (!patient) {
            return res.status(400).json({
                message: "Patient does not exist",
                data: null,
            });
        }
        //add medicines to the array operations of the patient
        patient.medicines.push(medicines)
        patient.healthscore = patient.healthscore - 0.05;
        await patient.save()

        res.status(200).json({
            success: true,
            message: "operation details added successfully",
            patient
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