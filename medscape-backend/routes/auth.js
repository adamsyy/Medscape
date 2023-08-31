const { signup } = require("../controller/auth/signup")
const { login } = require("../controller/auth/login")
const { user } = require("../controller/auth/user")

const {add_healthscore}=require('../controller/healthscore')
const {food}=require('../controller/food')

const router = require("express").Router()

router.post("/signup", signup)
router.post("/login", login)
router.post("/user", user)


router.post("/add_healthscore",add_healthscore)
router.post("/food",food)


module.exports = router