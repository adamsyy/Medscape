import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class Blogs2 extends StatefulWidget {
  const Blogs2({Key? key}) : super(key: key);

  @override
  State<Blogs2> createState() => _Blogs2State();
}

class _Blogs2State extends State<Blogs2> {
  @override
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
                                    "Health This",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Week!",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
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
                                      child: Center(child: Text("Read more"))),
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
                                    "Health This",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Week!",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
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
                                      child: Center(child: Text("Read more"))),
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
                                    "Health This",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Week!",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
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
                                      child: Center(child: Text("Read more"))),
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
                  ]),
            )),
          ],
        ));
  }
}
