import 'dart:ui';

import 'package:flutter/material.dart';

class Adddetails extends StatefulWidget {

  @override
  _AdddetailsState createState() => _AdddetailsState();
}

class _AdddetailsState extends State<Adddetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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

        body: SafeArea(
          child: Stack(
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
                  child: SingleChildScrollView(scrollDirection: Axis.vertical,
                    child: Container(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(39),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX:15, sigmaY:15),
                          child: Container(

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
                                          'Allergies',
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
                                          decoration: InputDecoration(hintText: 'allergy names',
                                            hintStyle: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w300,
                                              //letterSpacing: 2.0,
                                              color: Colors.grey,
                                              fontFamily: 'Poppins',
                                            ),
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
                                        padding: EdgeInsets.fromLTRB(26, 17, 220, 4),
                                        child: Text(
                                          'Operations',
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
                                          decoration: InputDecoration(hintText: 'Operation name',
                                            hintStyle: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w300,
                                              //letterSpacing: 2.0,
                                              color: Colors.grey,
                                              fontFamily: 'Poppins',
                                            ),
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
                                        padding: EdgeInsets.fromLTRB(20, 4, 19, 0),
                                        child: TextField(
                                          decoration: InputDecoration(hintText: 'description',
                                            hintStyle: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w300,
                                              //letterSpacing: 2.0,
                                              color: Colors.grey,
                                              fontFamily: 'Poppins',
                                            ),
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
                                        padding: EdgeInsets.fromLTRB(20, 4, 19, 0),
                                        child: TextField(
                                          decoration: InputDecoration(hintText: 'date',
                                            hintStyle: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w300,
                                              //letterSpacing: 2.0,
                                              color: Colors.grey,
                                              fontFamily: 'Poppins',
                                            ),
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






                                      Padding(
                                        padding: EdgeInsets.fromLTRB(26, 17, 200, 4),
                                        child: Text(
                                          'Medications',
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
                                          decoration: InputDecoration(hintText: 'Medication Name',
                                            hintStyle: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w300,
                                              //letterSpacing: 2.0,
                                              color: Colors.grey,
                                              fontFamily: 'Poppins',
                                            ),
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
                                        padding: EdgeInsets.fromLTRB(20, 4, 19, 0),
                                        child: TextField(
                                          decoration: InputDecoration(hintText: 'Dosage in mg',
                                            hintStyle: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w300,
                                              //letterSpacing: 2.0,
                                              color: Colors.grey,
                                              fontFamily: 'Poppins',
                                            ),
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
                                        width: 18,
                                      ),
                                      SizedBox(height: 10,),

                                      Align(
                                        alignment: FractionalOffset.bottomRight,
                                        child: MaterialButton(
                                          onPressed: () => {},
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12),
                                              color: Color(0xff7A87FB),
                                            ),
                                            height: 42,
                                            width: 131,
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Save >',
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
                                      SizedBox(height: 10,),
                                    ]
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]
          ),


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
