

const UserSchema = require("../../model/User")

module.exports.signup = async (req, res) => {
  var { username, password, email, name, age, allergies, operations,medicines,prescriptions,isdoctor, blood_group,sex,height,weight,waist } = req.body;
  try {
    const user = await UserSchema.findOne({ username });
    if (user) {
      return res.status(400).json({
        message: "User already exists",
        data: null,
      });
    }
    // api_secret=await bcrypt.hash(api_secret,8)
    // api_key=await bcrypt.hash(api_key,8)
    // api_secret=await bcrypt.hash(api_secret,8)
    // api_key=await bcrypt.hash(api_key,8)

    const newUser = new UserSchema({
      username,
      password,
      email,
      name,
      age,
      allergies,
      operations,
      medicines,
      prescriptions,
      isdoctor,
      blood_group,
      sex,
      height,
      weight,
      waist
    });

    await newUser.save();

    return res.status(200).json({
      success: true,
      message: "User created successfully",
      newUser
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