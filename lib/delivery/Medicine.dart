import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:healthcard/blogs.dart';
import 'package:http/http.dart' as http;

int check = 0;

class Medicine extends StatefulWidget {
  @override
  State<Medicine> createState() => _MedicineState();
}

class _MedicineState extends State<Medicine> {
  @override
  void initState() {
    // TODO: implement initState

    dataFuture = fetchToknens();
    super.initState();
  }

  late var data;
  late var dataFuture;

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff9AC9C2),
        body: Stack(
          children: [
           check==1? SingleChildScrollView(
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
                      height: 30,
                    ),
                    ListView.builder(
    shrinkWrap: true,
    itemCount: data.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(left: 11,right: 10),
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
              Image.asset(
                "pics/deliveryboy.png",
                width: 167,
                height: 103,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      data[index]["name"],
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      "${data[index]["to"]}->${data[index]["from"]}",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                            height: 26,
                            width: 98,
                            decoration: BoxDecoration(
                              //add radius

                                borderRadius:
                                BorderRadius.circular(18),
                                color: Color.fromRGBO(
                                    255, 255, 255, 0.5)),
                            child: Center(
                                child: Text(
                                  "Deliver",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500),
                                ))),
                        SizedBox(
                          width: 6,
                        ),
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
                ],
              ),
            ],
          ),
        ),
      );
    }

                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ]),
            )): Center(child: CupertinoActivityIndicator()),
          ],
        ));
  }

  dynamic fetchToknens() async {
    print("oioioi");
    final url = Uri.parse(c.url.toString() + "medicines/get_requests");
    print(url.toString() + "url");

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );
    // print(response.body);
    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body)["requests"];
        print("///");
        print(data[0]["to"]);
      });

      setState(() {
        check = 1;
      });
      return data;
    }
  }
}
