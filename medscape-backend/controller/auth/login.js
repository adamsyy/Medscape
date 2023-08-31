const UserSchema = require("../../model/User")

module.exports.login = async (req, res) => {
    const { username, password } = req.body;
    try {
        const user = await UserSchema.findOne({ username});
        if (!user) {
            return res.status(400).json({
                message: "User does not exist",
                data: null,
            });
        }
        if(user.password!==password){
            return res.status(403).json({
                message: "Password is incorrect",
                data: null,
            });
        }
        return res.status(200).json({
            success: true,
            message: "User logged in successfully",
            user
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            success: false,
            message: "Internal server error",
            data: null,
        });
    }
};


