import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class Blogs3 extends StatefulWidget {



  String name;
  String description;
  Blogs3({required this.name,required this.description});

  @override
  State<Blogs3> createState() => _Blogs3State();
}

class _Blogs3State extends State<Blogs3> {
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
                      padding: const EdgeInsets.only(left: 36),
                      child: GlassmorphicContainer(
                        width: 307,
                        height: 101,
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
                                    "Health This Week!",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 32),
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                        child: Text(widget.name))),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Image.asset("pics/blog.png"),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Align(alignment: Alignment.center, child: Text( widget.description,textAlign: TextAlign.center,style: TextStyle(),)),
                    ),
                  ]),
            )),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Container(
                  //give box decoration to this container
                  height: 77,
                  width: 34,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(122, 135, 251, 1),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  margin: EdgeInsets.only(left: 3),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
