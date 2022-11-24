import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:healthcard/blogs/Blogs3.dart';

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
                                    "Weight managing",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Blogs!",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  Blogs3(name: "Dr Rameshwar",description: "How relaxed do you feel at home? Is your bedroom the ultimate retreat where you can unwind after a long day? If you need just a few final touches to make your room the ultimate Zen sanctuary, we have a few suggestions that you might have overlooked. Transforming your bedroom into a peaceful retreat will take time, effort, and creativity, but if you ever get stuck, the following tips will help you create the most peaceful oasis of haven in your home.",)),
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
                                        child: Center(child: Text("Read more"))),
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
                                    "Protein",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "powders!",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(    onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  Blogs3(name: "Dr suraj hm",description: "Around 60% of Americans report wanting to lose weight and feel better, so they might look to supplements in trying to achieve that goal. Different types of supplements fall into the larger category of weight loss products, and one such type are thermogenic supplements. These are also referred to as fat burners.",)),
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
                                        child: Center(child: Text("Read more"))),
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
                                    "self care",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "activities!",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) =>  Blogs3(name: "Dr manimala",description: "Most people would like to be a healthy weight, whatever that means for their body type. Unfortunately, not many people know how to achieve this safely. There are a lot of fad diets and quick-fix solutions out there that promise results, but don’t deliver. So, if you want to reach a healthy weight, try these tips and tricks instead. The first step is understanding what a healthy weight looks like for your body type and frame. Once you have a good idea of your goals, you can start following these tips to help you get there: use weight loss pills, eat a balanced diet, and exercise regularly.",)),
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
                                        child: Center(child: Text("Read more"))),
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
                  ]),
            )),
          ],
        ));
  }
}
