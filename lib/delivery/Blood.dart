import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:healthcard/blogs.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class Blood extends StatefulWidget {
  @override
  State<Blood> createState() => _BloodState();
}

class _BloodState extends State<Blood> {
  @override
  void initState() {
    // TODO: implement initState

    dataFuture = fetchToknens();
    super.initState();
  }

  late var data;
  late var dataFuture;
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: () async => false,
      child: Scaffold(
          backgroundColor: Color(0xff9AC9C2),
          body: Stack(
            children: [
              check == 1
                  ? SingleChildScrollView(
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
                                    padding: const EdgeInsets.only(left: 13,right: 13,bottom: 13),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20),
                                                child: Text(
                                                  data[index]["blood"],
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 20),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 12),
                                                child: Text(
                                                  data[index]["hospital"],
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 12),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
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
                                          SizedBox(
                                            width: 65,
                                          ),
                                          GestureDetector(
                                            onTap: ()async{
                                              await launch("tel://"+data[index]["phone"]);
                                            },
                                            child: Container(
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
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                            SizedBox(
                              height: 20,
                            ),
                          ]),
                    ))
                  : Center(
                      child: CupertinoActivityIndicator(),
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
          )),
    );
  }

  dynamic fetchToknens() async {
    print("oioioi");
    final url = Uri.parse(c.url.toString() + "blood/get");
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
        data = json.decode(response.body)["blood"];
        print("///");
      });

      setState(() {
        check = 1;
      });
      return data;
    }
  }
}
