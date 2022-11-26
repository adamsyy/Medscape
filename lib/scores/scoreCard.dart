
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:healthcard/scores/scheme.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class scoreCard extends StatefulWidget {
  const scoreCard({Key? key}) : super(key: key);

  @override
  _scoreCardState createState() => _scoreCardState();
}

class _scoreCardState extends State<scoreCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff9AC9C2),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
                children: [
                  Row(children: [
                    Image.asset("pics/logo.png", width: 41,),
                    const SizedBox(width: 5,),
                    const Text("MedScape", style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 18),),
                  ],),

                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(image: DecorationImage(
                        image: AssetImage("pics/login_background.png"))),
                    child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          BlurryContainer(
                            blur: 15,
                            elevation: 0,
                            color: const Color.fromRGBO(255, 255, 255, 0.4),
                            padding: const EdgeInsets.fromLTRB(14, 0, 14, 24),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(29)),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  SizedBox(
                                    height: 17,
                                  ),

                                  Text("Coverage Score",
                                      style:
                                      TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                      )),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      new CircularPercentIndicator(
                                        radius: 74.5,
                                        lineWidth: 25.0,
                                        percent: .5,
                                        center: new Text("F",
                                            style:
                                            TextStyle(fontWeight: FontWeight.w500,fontSize: 48)),
                                        backgroundColor: Color(0xffC2DDD9),
                                        progressColor: Color(0xff00FF94),
                                      ),

                                      SizedBox(
                                        width: 26,
                                      ),
                                      Text("100/1500",
                                          style:
                                          TextStyle(

                                              fontWeight: FontWeight.w600,
                                              fontSize: 24,
                                          )),

                                    ],
                                  ),
                                  SizedBox(
                                    height: 26,
                                  ),

                                  Text("The above given score is an indication of the probability to avail medical insurance successfully. A few suggested insurance schemes are provided below to use. ",
                                      textAlign: TextAlign.left,
                                      style:
                                      TextStyle(fontWeight: FontWeight.w300)),


                                  SizedBox(
                                    height: 21,
                                  ),

                                  Text("Suggested Schemes",
                                      style:
                                      TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,

                                      )),


                                  SizedBox(
                                    height: 17,
                                  ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const scheme()),
                                );
                              },

                              child:Container(
                              height: 86,
                              width: 400,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(21),
                                  color: Color.fromRGBO(255, 255, 255, 0.5)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "pics/reminder1.png",
                                    width: 70,
                                    height: 70,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text("Schema1",
                                          style:
                                          TextStyle(
                                              fontWeight: FontWeight.w500)),
                                      Text("provider",
                                          style:
                                          TextStyle(
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        125, 25, 22, 25),
                                    child: Text("321",
                                        style:
                                        TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 26,
                                        )),
                                  ),
                                ],

                              ),
                            ),
                          ),
                                  SizedBox(
                                    height: 17,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const scheme()),
                                      );
                                    },

                                    child:Container(
                                      height: 86,
                                      width: 400,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(21),
                                          color: Color.fromRGBO(255, 255, 255, 0.5)),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            "pics/reminder1.png",
                                            width: 70,
                                            height: 70,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            children: [
                                              SizedBox(
                                                height: 30,
                                              ),
                                              Text("Schema1",
                                                  style:
                                                  TextStyle(
                                                      fontWeight: FontWeight.w500)),
                                              Text("provider",
                                                  style:
                                                  TextStyle(
                                                      fontWeight: FontWeight.w500)),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                125, 25, 22, 25),
                                            child: Text("146",
                                                style:
                                                TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 26,
                                                )),
                                          ),
                                        ],

                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 17,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const scheme()),
                                      );
                                    },

                                    child:Container(
                                      height: 86,
                                      width: 400,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(21),
                                          color: Color.fromRGBO(255, 255, 255, 0.5)),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            "pics/reminder1.png",
                                            width: 70,
                                            height: 70,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            children: [
                                              SizedBox(
                                                height: 30,
                                              ),
                                              Text("Schema1",
                                                  style:
                                                  TextStyle(
                                                      fontWeight: FontWeight.w500)),
                                              Text("provider",
                                                  style:
                                                  TextStyle(
                                                      fontWeight: FontWeight.w500)),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                125, 25, 22, 25),
                                            child: Text("199",
                                                style:
                                                TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 26,
                                                )),
                                          ),
                                        ],

                                      ),
                                    ),
                                  ),
                                  ],),

                          ),
                        ]),
                  ),
                ]),
          ),
        ),
      ),);
  }}
