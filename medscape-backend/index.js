const express = require("express");
const app = express();
const path = require("path");;
const cors = require("cors");
app.use(express.json());

const bodyParser = require("body-parser");
const dotenv = require("dotenv");
dotenv.config({ path: path.join(__dirname, "config.env") });
app.use(bodyParser.urlencoded({ extended: true }));
const mongoose = require("mongoose");



mongoose
    .connect("mongodb+srv://adamsy:adamsy@cluster0.ae5khio.mongodb.net/?retryWrites=true&w=majority", {
        useNewUrlParser: true,
        useUnifiedTopology: true,
    })
    .then(() => {
        console.log("DB Connected");
    });

app.use(cors())

//send response api is working 
app.get("/", (req, res) => {
    res.send("API is up and running.");
});


//endpoints for auth
app.use("/auth", require("./routes/auth"));

//endpoint for allergies
app.use("/allergies", require("./routes/allergies"));

//endpoint for prescriptions
app.use("/prescriptions", require("./routes/prescriptions"));

//endpoint for operations
app.use("/operations", require("./routes/operations"));

//endpoint for medicines
app.use("/medicines", require("./routes/medicines"));

//endpoint for nearby services
app.use("/nearby", require("./routes/nearby"));

//endpoint for blogs
app.use("/blogs", require("./routes/blogs"));

//endpoints for blood queries
app.use("/blood", require("./routes/blood"));

//endpoints for testing purposes
app.use("/test", require("./routes/test"));



const PORT = process.env.PORT || 5000;
app.listen(PORT, () => console.log(`Listening at ${PORT}`));