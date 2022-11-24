import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class Blood extends StatefulWidget {
  @override
  State<Blood> createState() => _BloodState();
}

class _BloodState extends State<Blood> {
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
                            height: 107,
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
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset(
                                    "pics/home4.png",
                                    width: 53,
                                    height: 64,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Text(
                                        "O+",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Text(
                                        "Hospital Name",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [

                                          SizedBox(
                                            width: 6,
                                          ),

                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 65,),
                                Container(
                                  height: 33,
                                  width: 33,
                                  decoration: BoxDecoration(
                                    //give grey border
                                    borderRadius:
                                    BorderRadius.circular(18),
                                    border: Border.all(
                                      //give rounded boeder

                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.phone,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
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
                        Icon(
                          Icons.notification_add_outlined,
                          color: Colors.white,
                          size: 38,
                        ),
                        Icon(Icons.list_alt_rounded,
                            color: Colors.white, size: 38),
                        Icon(Icons.person_outline_rounded,
                            color: Colors.white, size: 38),
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
}
