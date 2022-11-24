import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class Firstpage extends StatefulWidget {
  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff9AC9C2),
        body: Stack(
          children: [
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Image.asset("pics/biggestmed.png"),
                )),
            SingleChildScrollView(
                child: Container(
              padding: EdgeInsets.only(top: 30, left: 15, right: 10),
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
                      height: 60,
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    GlassmorphicContainer(
                      width: 350,
                      height: 350,
                      borderRadius: 39,
                      blur: 20,
                      alignment: Alignment.bottomCenter,
                      border: 2,
                      linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0.10),
                            Color.fromRGBO(255, 255, 255, 0.10),

                            // Color.fromRGBO(254, 254, 254, 0.2),
                            // Color.fromRGBO(254, 254, 254, 0.01),
                            // Color.fromRGBO(254, 254, 254, 0)
                          ],
                          stops: [
                            0.1,
                            4,
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
                        child: Padding(
                          padding: const EdgeInsets.only(left: 42),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 126,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 80),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "pics/img.png",
                                        height: 35,
                                        width: 38,
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Image.asset("pics/img_1.png",
                                          height: 35, width: 38),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 118),
                                  child: Image.asset("pics/img_4.png",
                                      height: 41, width: 41),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 82),
                                  child: Row(
                                    children: [
                                      Image.asset("pics/img_2.png",
                                          height: 35, width: 38),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Image.asset("pics/img_3.png",
                                          height: 35, width: 38),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Text(
                                    "Tap to scan QR code",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
            )),
          ],
        ));
  }
}
