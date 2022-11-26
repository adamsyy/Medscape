import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:healthcard/Controller.dart';
import 'package:healthcard/blogs/Blogs2.dart';
import 'package:healthcard/delivery/Blood.dart';
import 'package:healthcard/delivery/Medicine.dart';
import 'package:healthcard/doctor/Scan.dart';
import 'package:healthcard/patient/Profile.dart';
import 'package:healthcard/patient/Reminder.dart';
import 'package:healthcard/scores/healthScore.dart';
import 'package:healthcard/scores/scoreCard.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:geolocator/geolocator.dart';

var lat, long;

Controller controller = Get.put(Controller());

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => QRViewExample()),
                              );
                            },
                            child: Image.asset(
                              "pics/logo.png",
                              width: 41,
                            ),
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
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: GlassmorphicContainer(
                          width: 329,
                          height: 168,
                          borderRadius: 21,
                          blur: 20,
                          alignment: Alignment.bottomCenter,
                          border: 2,
                          linearGradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFFffffff).withOpacity(0.3),
                                Color(0xFFFFFFFF).withOpacity(0.1),
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "check your",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "health score!",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => scoreCard()),
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          height: 26,
                                          width: 98,
                                          decoration: BoxDecoration(
                                              //add radius

                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.5)),
                                          child:
                                              Center(child: Text("Read more"))),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Image.asset(
                                "pics/blog.png",
                                width: 167,
                                height: 103,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: GlassmorphicContainer(
                          width: 329,
                          height: 200,
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
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 8,
                                  ),
                                  GestureDetector(
                                    onTap: () async {
                                      final Uri _url = Uri.parse(
                                          "geo:${controller.lat},${controller.long}?q=hospitals");
                                      await launch(_url.toString());
                                    },
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 80,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.5)),
                                          child: Center(
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Image.asset(
                                                  "pics/home1.png",
                                                  width: 36,
                                                  height: 33,
                                                ),
                                                Text(
                                                  "Nearby",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 10),
                                                ),
                                                Text(
                                                  "Hospitals",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 10),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () async {
                                      final Uri _url = Uri.parse(
                                          "geo:${controller.lat},${controller.long}?q=pharmacy");
                                      await launch(_url.toString());
                                    },
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 80,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.5)),
                                          child: Center(
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Image.asset(
                                                  "pics/home2.png",
                                                  width: 36,
                                                  height: 33,
                                                ),
                                                Text(
                                                  "Nearby",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 10),
                                                ),
                                                Text(
                                                  "Pharmasy",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 10),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () async {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Medicine()),
                                      );
                                    },
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 80,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.5)),
                                          child: Center(
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Image.asset(
                                                  "pics/home3.png",
                                                  width: 36,
                                                  height: 33,
                                                ),
                                                Text(
                                                  "Deliver",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 10),
                                                ),
                                                Text(
                                                  "Medicnes",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 10),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () async {
                                      print("ehhh");
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Blood()),
                                      );
                                    },
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 80,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.5)),
                                          child: Center(
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Image.asset(
                                                  "pics/home4.png",
                                                  width: 36,
                                                  height: 33,
                                                ),
                                                Text(
                                                  "Donate",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 10),
                                                ),
                                                Text(
                                                  "Blood",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 10),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                              SizedBox(height: 16,),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 8,
                                  ),

                                  GestureDetector(
                                    onTap: () async {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const Blogs2()),
                                      );
                                    },
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 80,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(18),
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.5)),
                                          child: Center(
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Image.asset(
                                                  "pics/blog_small.png",
                                                  width: 36,
                                                  height: 33,
                                                ),
                                               SizedBox(height: 5,),
                                                Text(
                                                  "Blogs",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 10),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () async {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>scoreCard()),
                                      );
                                    },
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 80,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(18),
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.5)),
                                          child: Center(
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Image.asset(
                                                  "pics/coverage.png",
                                                  width: 36,
                                                  height: 33,
                                                ),
                                                Text(
                                                  "Coverage",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 10),
                                                ),
                                                Text(
                                                  "Scores",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 10),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  GestureDetector(
                                    onTap: () async {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => healthScore()),
                                      );
                                    },
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 80,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(18),
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.5)),
                                          child: Center(
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Image.asset(
                                                  "pics/health_Score.png",
                                                  width: 36,
                                                  height: 33,
                                                ),
                                                Text(
                                                  "Health",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 10),
                                                ),
                                                Text(
                                                  "score",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 10),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  GestureDetector(
                                    onTap: () async {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Medicine()),
                                      );
                                    },
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 80,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(18),
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.5)),
                                          child: Center(
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Image.asset(
                                                  "pics/dummy.png",
                                                  width: 36,
                                                  height: 33,
                                                ),
                                                Text(
                                                  "Medical",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 10),
                                                ),
                                                Text(
                                                  "History",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 10),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),


                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
              )),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Reminder()),
                              );
                            },
                            child: Icon(
                              Icons.notification_add_outlined,
                              color: Colors.white,
                              size: 38,
                            ),
                          ),
                          Icon(Icons.list_alt_rounded,
                              color: Colors.white, size: 38),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Profile(namefromprofile: controller.username.value)),
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
          ),

      ),

    );
  }
}
