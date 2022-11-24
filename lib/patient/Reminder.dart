import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:healthcard/Home.dart';
import 'package:healthcard/doctor/Scan.dart';
import 'package:healthcard/patient/Profile.dart';
import 'package:http/http.dart' as http;
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthcard/Controller.dart';

int check = 0;

Controller c = Get.put(Controller());

class Reminder extends StatefulWidget {
  @override
  State<Reminder> createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  @override
  void initState() {
    // TODO: implement initState

    //dataFuture = fetchToknens();
    super.initState();
  }

  late var data;
  late var dataFuture;
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff9AC9C2),
        body: Stack(
          children: [
            SingleChildScrollView(
                child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "pics/logo.png",
                          width: 41,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "MedScape",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    Text("Remainders",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20)),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        GlassmorphicContainer(
                          width: 47,
                          height: 61,
                          borderRadius: 20,
                          blur: 20,
                          alignment: Alignment.bottomCenter,
                          border: 2,
                          linearGradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(1, 188, 143, 1).withOpacity(1),
                                Color.fromRGBO(1, 188, 143, 1).withOpacity(1),
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
                              Text("Mon"),
                              Text(
                                ".",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.orange),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GlassmorphicContainer(
                          width: 47,
                          height: 61,
                          borderRadius: 20,
                          blur: 20,
                          alignment: Alignment.bottomCenter,
                          border: 2,
                          linearGradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(175, 212, 206, 1).withOpacity(1),
                                Color.fromRGBO(175, 212, 206, 1)
                                    .withOpacity(0.3),
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
                              Text("Tue"),
                              Text(
                                ".",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.orange),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GlassmorphicContainer(
                          width: 47,
                          height: 61,
                          borderRadius: 20,
                          blur: 20,
                          alignment: Alignment.bottomCenter,
                          border: 2,
                          linearGradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(175, 212, 206, 1).withOpacity(1),
                                Color.fromRGBO(175, 212, 206, 1)
                                    .withOpacity(0.3),
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
                              Text("Wed"),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GlassmorphicContainer(
                          width: 47,
                          height: 61,
                          borderRadius: 20,
                          blur: 20,
                          alignment: Alignment.bottomCenter,
                          border: 2,
                          linearGradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(175, 212, 206, 1).withOpacity(1),
                                Color.fromRGBO(175, 212, 206, 1)
                                    .withOpacity(0.3),
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
                              Text("Thurs"),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GlassmorphicContainer(
                          width: 47,
                          height: 61,
                          borderRadius: 20,
                          blur: 20,
                          alignment: Alignment.bottomCenter,
                          border: 2,
                          linearGradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(175, 212, 206, 1).withOpacity(1),
                                Color.fromRGBO(175, 212, 206, 1)
                                    .withOpacity(0.3),
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
                              Text("Fri"),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GlassmorphicContainer(
                          width: 47,
                          height: 61,
                          borderRadius: 20,
                          blur: 20,
                          alignment: Alignment.bottomCenter,
                          border: 2,
                          linearGradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(175, 212, 206, 1).withOpacity(1),
                                Color.fromRGBO(175, 212, 206, 1)
                                    .withOpacity(0.3),
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
                              Text("Sat"),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GlassmorphicContainer(
                          width: 47,
                          height: 61,
                          borderRadius: 20,
                          blur: 20,
                          alignment: Alignment.bottomCenter,
                          border: 2,
                          linearGradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(175, 212, 206, 1).withOpacity(1),
                                Color.fromRGBO(175, 212, 206, 1)
                                    .withOpacity(0.3),
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
                              Text("Sun"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    GlassmorphicContainer(
                      width: 352,
                      height: 119,
                      borderRadius: 20,
                      blur: 20,
                      alignment: Alignment.bottomCenter,
                      border: 2,
                      linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.1),
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
                      child: Row(
                        children: [
                          Center(
                              child: Image.asset(
                            "pics/reminder1.png",
                            width: 70,
                            height: 70,
                          )),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text("Paracetamol",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              Text("1-1-0",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Container(
                              height: 64,
                              width: 51,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(21),
                                  color: Color.fromRGBO(215, 234, 231, 1)),
                              child: Icon(
                                Icons.done,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),

                    GlassmorphicContainer(
                      width: 352,
                      height: 119,
                      borderRadius: 20,
                      blur: 20,
                      alignment: Alignment.bottomCenter,
                      border: 2,
                      linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.1),
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
                      child: Row(
                        children: [
                          Center(
                              child: Image.asset(
                                "pics/reminder2.png",
                                width: 70,
                                height: 70,
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text("Visit Hospital",
                                  style:
                                  TextStyle(fontWeight: FontWeight.w500)),
                              Text("11.30am",
                                  style:
                                  TextStyle(fontWeight: FontWeight.w500)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Container(
                              height: 64,
                              width: 51,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(21),
                                  color: Color.fromRGBO(215, 234, 231, 1)),
                              child: Icon(
                                Icons.done,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
            )),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 44, right: 20, left: 160),
                child: Container(
                  child: Image.asset(
                    "pics/med2.png",
                  ),
                  width: 275,
                ),
              ),
            ),

            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.notification_add_outlined,
                          color: Colors.white,
                          size: 38,
                        ),
                        GestureDetector(onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Home()),
                          );
                        },
                          child: Icon(Icons.list_alt_rounded,
                              color: Colors.white, size: 38),
                        ),
                        GestureDetector(onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Profile()),
                          );
                        },
                          child: Icon(Icons.person_outline_rounded,
                              color: Colors.white, size: 38),
                        ),
                      ],
                    ),
                    height: 54,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                )),
          ],
        ));
  }

  // dynamic fetchToknens() async {
  //   print("oioioi");
  //   Map newUpdate = {"username": widget.namefromScan, "doctor_username": "salmanxy"};
  //   final url = Uri.parse(c.url.toString() + "auth/user");
  //   print(url.toString() + "url");
  //
  //   final response = await http.post(url,
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Accept': 'application/json',
  //       },
  //       body: jsonEncode(newUpdate));
  //   // print(response.body);
  //   if (response.statusCode == 200) {
  //     setState(() {
  //       data = json.decode(response.body)["user"];
  //       print("///");
  //       print(data);
  //     });
  //
  //     setState(() {
  //       check=1;
  //     });
  //     return data;
  //   }
  // }

}
