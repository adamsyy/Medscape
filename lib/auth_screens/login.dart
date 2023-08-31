import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthcard/Home.dart';
import 'package:healthcard/auth_screens/signUp1.dart';
import 'package:http/http.dart';
import 'package:healthcard/Controller.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController unameController = TextEditingController();
  TextEditingController passwdController = TextEditingController();

  bool flag=false;

  void login(String email , password) async {
    Controller c = Get.put(Controller());
    try{
      c.username.value=email;
      final response = await post(
        Uri.parse('https://medscape-backend-kqaedxbz4-weberstills.vercel.app/auth/login'),
        body: {
          'username' : email,
          'password' : password
        }
      );

      if(response.statusCode == 200){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
      }else {
        print(response.body);
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            title: const Text('Incorrect credentials'),
            content: const Text('The credentials you entered is incorrect. Please try again.'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK', style: TextStyle(color: Color(0xff9AC9C2)),),
              ),
            ],
          ),
        );
      }
    }catch(e){
      print(e.toString());
    }
    setState(() {
      flag=false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff9AC9C2),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
                children: [
                  Row(children: [
                    Image.asset("pics/logo.png", width: 41,),
                    const SizedBox(width: 5,),
                    const Text("MedScape", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                  ],),
                  const SizedBox(height: 50,),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Your ",style: TextStyle(fontSize: 38, fontWeight: FontWeight.w700)),
                          Text("Personal",style: TextStyle(fontSize: 38, fontWeight: FontWeight.w700, color: Color(0xff107059))),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: const Text("Health Consultant.",style: TextStyle(fontSize: 38, fontWeight: FontWeight.w700),),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40,),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("pics/login_background.png"))),
                    child: Column(
                      children: [
                        const SizedBox(height: 200,),
                        BlurryContainer(
                          blur: 15,
                          elevation: 0,
                          color: const Color.fromRGBO(255, 255, 255, 0.4),
                          padding: const EdgeInsets.fromLTRB(20, 35, 20, 10),
                          borderRadius: const BorderRadius.all(Radius.circular(39)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  SizedBox(width: 10,),
                                  Text("Username", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                                ],
                              ),
                              const SizedBox(height: 5,),
                              TextField(
                                controller: unameController,
                                cursorColor: const Color(0xff01BC8F),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    filled: true,
                                    fillColor: const Color.fromRGBO(255, 255, 255, 0.6)),
                              ),
                              const SizedBox(height: 25,),
                              Row(
                                children: const [
                                  SizedBox(width: 10,),
                                  Text("Password", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                                ],
                              ),
                              const SizedBox(height: 5,),
                              TextField(
                                controller: passwdController,
                                cursorColor: const Color(0xff01BC8F),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    filled: true,
                                    fillColor: const Color.fromRGBO(255, 255, 255, 0.6)),
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    style: TextButton.styleFrom(
                                        fixedSize: Size(100, 45),
                                        backgroundColor: const Color(0xff01BC8F),

                                        padding: const EdgeInsets.fromLTRB(27, 10, 27 , 10),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                                    ),
                                    child: (!flag ? const Text("login", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400, color: Color(0xff000000)),) : 
                                    const SpinKitFadingCircle(
                                      color: Colors.black,
                                      size: 20,
                                    )),
                                    onPressed: () {
                                      setState(() {
                                        flag = true;
                                      });
                                      login(unameController.text.toString(), passwdController.text.toString());
                                    },
                                  ),
                                  const SizedBox(width: 10,)
                                ],
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Dont have an account?", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                                  TextButton(
                                      style: ButtonStyle(
                                        shadowColor: MaterialStateProperty.all(Colors.transparent),
                                        overlayColor: MaterialStateProperty.all(Colors.transparent),
                                      ),
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => signUp1()));
                                      }, child: const Text("Sign Up", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xff01BC8F)),)
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ]
            ),
          ),
        ),
      ),
    );
  }
}
