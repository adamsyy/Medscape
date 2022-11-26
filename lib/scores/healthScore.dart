import 'dart:convert';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:get/get.dart';
import 'package:healthcard/Controller.dart';
import 'package:healthcard/scores/healthScore.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
var scoreahne;
String scoreahne_string="";
int scoreahne_int=0;

int check=0;

class healthScore extends StatefulWidget {
  const healthScore({Key? key}) : super(key: key);

  @override
  _healthScoreState createState() => _healthScoreState();
}

class _healthScoreState extends State<healthScore> {
  @override
  void initState() {
    // TODO: implement initState
dataFuture=fetchToknens();
    super.initState();
  }

  late var data;
  late var dataFuture;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff9AC9C2),
        body:check==1? SingleChildScrollView(
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

                                Text("Health Score",
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
                                      percent: .25,
                                      center: new Text("B",
                                          style:
                                          TextStyle(fontWeight: FontWeight.w500,fontSize: 48)),
                                      backgroundColor: Color(0xffC2DDD9),
                                      progressColor: Color(0xff00FF94),
                                    ),

                                    SizedBox(
                                      width: 26,
                                    ),
                                    Text(scoreahne_int.toString()+"/1500",
                                        style:
                                        TextStyle(

                                          fontWeight: FontWeight.w600,
                                          fontSize: 24,
                                        )),

                                  ],
                                ),

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
                                    setState(() {});
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
                                          "pics/img_5.png",
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
                                            Text("milk",
                                                style:
                                                TextStyle(
                                                    fontWeight: FontWeight.w500)),
                                            Text("42 calories",
                                                style:
                                                TextStyle(
                                                    fontWeight: FontWeight.w500)),
                                          ],
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
                                    setState(() {});
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
                                          "pics/img_5.png",
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
                                            Text("rice",
                                                style:
                                                TextStyle(
                                                    fontWeight: FontWeight.w500)),
                                            Text("130 calories",
                                                style:
                                                TextStyle(
                                                    fontWeight: FontWeight.w500)),
                                          ],
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
                                    setState(() {});
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
                                          "pics/img_5.png",
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
                                            Text("red meat",
                                                style:
                                                TextStyle(
                                                    fontWeight: FontWeight.w500)),
                                            Text("300 calories",
                                                style:
                                                TextStyle(
                                                    fontWeight: FontWeight.w500)),
                                          ],
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
                                    setState(() {});
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
                                          "pics/img_5.png",
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
                                            Text("potatoes",
                                                style:
                                                TextStyle(
                                                    fontWeight: FontWeight.w500)),
                                            Text("400 calories",
                                                style:
                                                TextStyle(
                                                    fontWeight: FontWeight.w500)),
                                          ],
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
        ):Center(child: CupertinoActivityIndicator(),),
      ),);
    ;
  }




  dynamic fetchToknens() async {
    Controller c = Get.put(Controller());

    print("oioioi");

    Map newUpdate = {
      "patient_username": c.username.value,
      "height":169,
      "weight":103,
      "waist":100,
      "sex":"male"
    };
    final url = Uri.parse(c.url.toString() + "auth/add_healthscore");
    print(url.toString() + "  url");
try{

  final response = await http.post(url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode(newUpdate));



  if (response.statusCode == 200) {
    setState(() {
      data = json.decode(response.body)["patient"];
      print("///");
      print(data);
      scoreahne=(data["healthscore"])*1000;
      scoreahne_int=scoreahne.toInt()-150;
      //convert scoreahne to string
      //scoreahne_string=scoreahne.toString();
      print(scoreahne_int);
    });

    setState(() {
      check = 1;
    });


    return data;
}

    }catch(e){
  print(e);
}
  }



}
