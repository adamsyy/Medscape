import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:healthcard/comps/Popupfopatient.dart';
import 'package:healthcard/doctor/Addinfo.dart';
import 'package:healthcard/patient/Adddetails.dart';

class Signup2 extends StatefulWidget {
  const Signup2({Key? key}) : super(key: key);

  @override
  State<Signup2> createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            backgroundColor: Color.fromRGBO(179, 204, 255, 1),
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
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 16),
                        Padding(
                          padding: EdgeInsets.only(left: 60),
                          child: Column(
                            children: [
                              SizedBox(height: 30),
                              GlassmorphicContainer(
                                  width: 109,
                                  height: 181,
                                  borderRadius: 39,
                                  blur: 20,
                                  alignment: Alignment.bottomCenter,
                                  border: 2,
                                  linearGradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.white.withOpacity(0.15),
                                        Colors.white.withOpacity(0.07),
                                      ],
                                      stops: [
                                        0.1,
                                        1,
                                      ]),
                                  borderGradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.transparent,
                                      Colors.transparent,
                                    ],
                                  ),
                                  child: Column(children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "Gender",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    GlassmorphicContainer(
                                      width: 61,
                                      height: 41,
                                      borderRadius: 20,
                                      blur: 20,
                                      alignment: Alignment.bottomCenter,
                                      border: 2,
                                      linearGradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Color.fromRGBO(255, 255, 255, 0.22),
                                            Color(0xFFFFFFFF).withOpacity(0.05),
                                          ],
                                          stops: [
                                            0.1,
                                            1,
                                          ]),
                                      borderGradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.transparent,
                                          Colors.transparent,
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          "M",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    GlassmorphicContainer(
                                      width: 61,
                                      height: 41,
                                      borderRadius: 20,
                                      blur: 20,
                                      alignment: Alignment.bottomCenter,
                                      border: 2,
                                      linearGradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Color.fromRGBO(255, 255, 255, 0.22),
                                            Color(0xFFFFFFFF).withOpacity(0.05),
                                          ],
                                          stops: [
                                            0.1,
                                            1,
                                          ]),
                                      borderGradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.transparent,
                                          Colors.transparent,
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          "F",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ])),
                              SizedBox(
                                height: 0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  print("object");
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Adddetails()),
                                  );
                                },
                                child: GlassmorphicContainer(
                                  width: 109,
                                  height: 116,
                                  borderRadius: 39,
                                  blur: 20,
                                  alignment: Alignment.bottomCenter,
                                  border: 2,
                                  linearGradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.white.withOpacity(0.15),
                                        Colors.white.withOpacity(0.07),
                                      ],
                                      stops: [
                                        0.1,
                                        1,
                                      ]),
                                  borderGradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.transparent,
                                      Colors.transparent,
                                    ],
                                  ),
                                  child: Center(
                                    child: Container(
                                      height: 55,
                                      width: 56,
                                      child: Icon(Icons.add,
                                          color: Colors.black.withOpacity(0.6)),
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromRGBO(255, 255, 255, 0.22),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(27)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        GlassmorphicContainer(
                          width: 154,
                          height: 308,
                          borderRadius: 20,
                          blur: 20,
                          alignment: Alignment.bottomCenter,
                          border: 2,
                          linearGradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.white.withOpacity(0.15),
                                Colors.white.withOpacity(0.07),
                              ],
                              stops: [
                                0.1,
                                1,
                              ]),
                          borderGradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.transparent,
                              Colors.transparent,
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                "Blood Type",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GlassmorphicContainer(
                                    width: 61,
                                    height: 41,
                                    borderRadius: 20,
                                    blur: 20,
                                    alignment: Alignment.bottomCenter,
                                    border: 2,
                                    linearGradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color.fromRGBO(255, 255, 255, 0.23),
                                          Color(0xFFFFFFFF).withOpacity(0.23),
                                        ],
                                        stops: [
                                          0.1,
                                          1,
                                        ]),
                                    borderGradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.transparent,
                                        Colors.transparent,
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        "A+",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GlassmorphicContainer(
                                    width: 61,
                                    height: 41,
                                    borderRadius: 20,
                                    blur: 20,
                                    alignment: Alignment.bottomCenter,
                                    border: 2,
                                    linearGradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color.fromRGBO(255, 255, 255, 0.23),
                                          Color(0xFFFFFFFF).withOpacity(0.23),
                                        ],
                                        stops: [
                                          0.1,
                                          1,
                                        ]),
                                    borderGradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.transparent,
                                        Colors.transparent,
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        "A-",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GlassmorphicContainer(
                                    width: 61,
                                    height: 41,
                                    borderRadius: 20,
                                    blur: 20,
                                    alignment: Alignment.bottomCenter,
                                    border: 2,
                                    linearGradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color.fromRGBO(255, 255, 255, 0.23),
                                          Color(0xFFFFFFFF).withOpacity(0.23),
                                        ],
                                        stops: [
                                          0.1,
                                          1,
                                        ]),
                                    borderGradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.transparent,
                                        Colors.transparent,
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        "B+",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GlassmorphicContainer(
                                    width: 61,
                                    height: 41,
                                    borderRadius: 20,
                                    blur: 20,
                                    alignment: Alignment.bottomCenter,
                                    border: 2,
                                    linearGradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color.fromRGBO(255, 255, 255, 0.23),
                                          Color(0xFFFFFFFF).withOpacity(0.23),
                                        ],
                                        stops: [
                                          0.1,
                                          1,
                                        ]),
                                    borderGradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.transparent,
                                        Colors.transparent,
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        "B-",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GlassmorphicContainer(
                                    width: 61,
                                    height: 41,
                                    borderRadius: 20,
                                    blur: 20,
                                    alignment: Alignment.bottomCenter,
                                    border: 2,
                                    linearGradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color.fromRGBO(255, 255, 255, 0.23),
                                          Color(0xFFFFFFFF).withOpacity(0.23),
                                        ],
                                        stops: [
                                          0.1,
                                          1,
                                        ]),
                                    borderGradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.transparent,
                                        Colors.transparent,
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        "AB+",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GlassmorphicContainer(
                                    width: 61,
                                    height: 41,
                                    borderRadius: 20,
                                    blur: 20,
                                    alignment: Alignment.bottomCenter,
                                    border: 2,
                                    linearGradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color.fromRGBO(255, 255, 255, 0.23),
                                          Color(0xFFFFFFFF).withOpacity(0.23),
                                        ],
                                        stops: [
                                          0.1,
                                          1,
                                        ]),
                                    borderGradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.transparent,
                                        Colors.transparent,
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        "AB-",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GlassmorphicContainer(
                                    width: 61,
                                    height: 41,
                                    borderRadius: 20,
                                    blur: 20,
                                    alignment: Alignment.bottomCenter,
                                    border: 2,
                                    linearGradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color.fromRGBO(255, 255, 255, 0.23),
                                          Color(0xFFFFFFFF).withOpacity(0.23),
                                        ],
                                        stops: [
                                          0.1,
                                          1,
                                        ]),
                                    borderGradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.transparent,
                                        Colors.transparent,
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        "O+",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GlassmorphicContainer(
                                    width: 61,
                                    height: 41,
                                    borderRadius: 20,
                                    blur: 20,
                                    alignment: Alignment.bottomCenter,
                                    border: 2,
                                    linearGradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color.fromRGBO(255, 255, 255, 0.23),
                                          Color(0xFFFFFFFF).withOpacity(0.23),
                                        ],
                                        stops: [
                                          0.1,
                                          1,
                                        ]),
                                    borderGradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.transparent,
                                        Colors.transparent,
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        "O-",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    GlassmorphicContainer(
                      width: 332,
                      height: 189,
                      borderRadius: 20,
                      blur: 20,
                      alignment: Alignment.bottomCenter,
                      border: 2,
                      linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.white.withOpacity(0.15),
                            Colors.white.withOpacity(0.07),
                          ],
                          stops: [
                            0.1,
                            1,
                          ]),
                      borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Height",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Weight",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Waist",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GlassmorphicContainer(
                                width: 81,
                                height: 54,
                                borderRadius: 18,
                                blur: 20,
                                alignment: Alignment.bottomCenter,
                                border: 2,
                                linearGradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color.fromRGBO(255, 255, 255, 0.23),
                                      Color(0xFFFFFFFF).withOpacity(0.23),
                                    ],
                                    stops: [
                                      0.1,
                                      1,
                                    ]),
                                borderGradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.transparent,
                                    Colors.transparent,
                                  ],
                                ),
                                child: Center(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: '   cm',
                                      labelStyle: TextStyle(
                                          //keep it at right side of textfield

                                          color: Colors.grey,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                              GlassmorphicContainer(
                                width: 81,
                                height: 54,
                                borderRadius: 18,
                                blur: 20,
                                alignment: Alignment.bottomCenter,
                                border: 2,
                                linearGradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color.fromRGBO(255, 255, 255, 0.23),
                                      Color(0xFFFFFFFF).withOpacity(0.23),
                                    ],
                                    stops: [
                                      0.1,
                                      1,
                                    ]),
                                borderGradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.transparent,
                                    Colors.transparent,
                                  ],
                                ),
                                child: Center(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: '   kg',
                                      labelStyle: TextStyle(
                                          //keep it at right side of textfield

                                          color: Colors.grey,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                              GlassmorphicContainer(
                                width: 81,
                                height: 54,
                                borderRadius: 18,
                                blur: 20,
                                alignment: Alignment.bottomCenter,
                                border: 2,
                                linearGradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color.fromRGBO(255, 255, 255, 0.23),
                                      Color(0xFFFFFFFF).withOpacity(0.23),
                                    ],
                                    stops: [
                                      0.1,
                                      1,
                                    ]),
                                borderGradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.transparent,
                                    Colors.transparent,
                                  ],
                                ),
                                child: Center(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: '   cm',
                                      labelStyle: TextStyle(
                                          //keep it at right side of textfield

                                          color: Colors.grey,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 200, right: 0),
                            child: Container(
                                height: 42,
                                width: 131,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color.fromRGBO(122, 135, 251, 1),
                                ),
                                child: Center(
                                  child: Text(
                                    "Sign up",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
        //make image at bottom right of screen
        Positioned(
          bottom: 3,
          right: 15,
          child: Image.asset(
            "pics/med.png",
            fit: BoxFit.fitWidth,
            alignment: Alignment(-1, -0.5),
            width: 200,
          ),
        ),
        Positioned(
          bottom: 550,
          left: 10,
          child: Container(
            //give box decoration to this container
            height: 77,
            width: 34,
            decoration: BoxDecoration(
              color: Color.fromRGBO(122, 135, 251, 1),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            margin: EdgeInsets.only(left: 12),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }

  // show popup on screen
  // void showPopup(BuildContext context, String message,
  //     [MaterialColor color = Colors.red]) {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return SingleChildScrollView(
  //           scrollDirection: Axis.vertical,
  //           child: BackdropFilter(
  //             filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
  //             child: AlertDialog( backgroundColor: Colors.white,
  //               //give height and width
  //               actions: <Widget>[
  //                 Popupfopatient()
  //               ],
  //             ),
  //           ),
  //         );
  //       });
  // }
}
