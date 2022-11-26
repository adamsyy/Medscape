import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:healthcard/auth_screens/Signup2.dart';

class signUp1 extends StatefulWidget {
  const signUp1({Key? key}) : super(key: key);

  @override
  _signUp1State createState() => _signUp1State();
}

class _signUp1State extends State<signUp1> {
  TextEditingController unameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController passwdController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset:false,

        appBar: AppBar(
          title: Text(
            "MedScape",
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          titleSpacing: 0,
          // systemOverlayStyle: SystemUiOverlayStyle(
          //   // Status bar color
          //   statusBarColor: Color.fromRGBO(179, 204, 255, 1),
          // ),
          backgroundColor: Color.fromRGBO(179, 204, 255, 1),
          elevation: 0,
          leading: IconButton(
            icon:
            //solve overflow to right

            Image.asset(
              "pics/logo.png",
              width: 40,
            ),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),

      backgroundColor: Color(0xffB2CCFF),

      body: Stack(
        children:[

          // Align(
          //   alignment: Alignment.topLeft,
          //   child: Row(
          //     children: [
          //       Image.asset(
          //         "pics/logo.png",
          //       ),
          //       Text(
          //         'MedScape',
          //         style: TextStyle(
          //           fontSize: 16.0,
          //           fontWeight: FontWeight.w500,
          //           color: Colors.black,
          //           fontFamily: 'Poppins',
          //         ),
          //       ),
          //     ],
          //   )
          //
          // ),
          SizedBox(
            height: 50,
          ),

        Align(
        alignment: Alignment.bottomRight,
        child: Container(child: Image.asset(

          "pics/med.png",
        ),

  width: 275,

        ),

      ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Container(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(39),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX:15, sigmaY:15),
                  child: Container(
                  height: 530,
                  width: 332,
                  color: Colors.white.withOpacity(0.2),
                  child: Column(
                    children: [
                   Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(26, 29, 216, 4),
                        child: Text(
                          'User Name',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            //letterSpacing: 2.0,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 4, 19, 0),
                          child: TextField(
                            controller: unameController,
                            decoration: InputDecoration(
                              enabledBorder:  OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(
                                    color: Colors.transparent
                                  ),),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 2,
                                  ),),
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.22),

                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(26, 17, 241, 4),
                          child: Text(
                            'Email Id',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              //letterSpacing: 2.0,
                              color: Colors.black,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 4, 19, 0),
                          child: TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              enabledBorder:  OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(
                                    color: Colors.transparent
                                  ),),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 2,
                                  ),),
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.22),

                            ),
                          ),
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                title: Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child:Text(
                                    'First Name',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,

                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                                subtitle: Padding(
                                  padding:  EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: TextField(
                                    controller: fnameController,
                                    decoration: InputDecoration(
                                      enabledBorder:  OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(18),
                                          borderSide: BorderSide(
                                            color: Colors.transparent
                                          ),),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(18),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 2,
                                          ),),
                                      filled: true,
                                      fillColor: Colors.white.withOpacity(0.22),

                                    ),
                                  ),
                                        ),),
                            ),
                            SizedBox(
                              width: 11,
                            ),
                            Expanded(
                              child:ListTile(
                                title:  Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child:Text(
                                    'Last Name',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,

                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                                subtitle:  TextField(
                                  controller: lnameController,
                                  decoration: InputDecoration(
                                    enabledBorder:  OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(18),
                                        borderSide: BorderSide(
                                          color: Colors.transparent
                                        ),),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(18),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 2,
                                        ),),
                                    filled: true,
                                    fillColor: Colors.white.withOpacity(0.22),

                                  ),
                                ),),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        ListTile(
                          title: Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child:Text(
                              'Password',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,

                                color: Colors.black,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          subtitle: Padding(
                            padding:  EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: TextField(
                              controller: passwdController,
                              decoration: InputDecoration(
                                enabledBorder:  OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: BorderSide(color: Colors.transparent),),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 2,
                                    ),),
                                filled: true,
                                fillColor: Colors.white.withOpacity(0.22),

                              ),
                            ),
                          ),),
                        SizedBox(
                          height: 34,
                        ),
                        Align(
                          alignment: FractionalOffset.bottomRight,
                          child: MaterialButton(
                            onPressed: () => {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Signup2(
                                uname: unameController.text.toString(),
                                email: emailController.text.toString(),
                                name: fnameController.text.toString()+" "+lnameController.text.toString(),
                                passwd: passwdController.text.toString(),
                              )))
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xff7A87FB),
                              ),
                              height: 42,
                              width: 131,
                              alignment: Alignment.center,
                            child: Text(
                              'Continue >',
                              style:  TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w400,

                                color: Colors.black,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            ),
                          ),
                        ),

                        ]
                    ),
                    ],
                  ),
                ),
                ),
              ),
            ),
          ),
        ]
      )
      /*Image.asset(
      "assets/backgrnd.png",
     // alignment: Alignment.bottomRight,
      ),*/
     /* Center(
        child: Text("App content would be here"),
      ),*/
    );
  }
}
