const UserSchema = require("../../model/User")

module.exports.allergies_patient = async (req, res) => {
    const {allergies,patient_username } = req.body;
    try {
        const patient = await UserSchema.findOne({ username:patient_username });
        if (!patient) {
            return res.status(400).json({
                message: "Doctor does not exist",
                data: null,
            });
        }


        //add allergy to the array allergies of the patient
        patient.allergies.push(allergies)
        await patient.save()

        res.status(200).json({
            success: true,
            message: "Allergy added successfully",
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