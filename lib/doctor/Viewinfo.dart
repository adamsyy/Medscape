import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:healthcard/doctor/Add_prescription.dart';
import 'package:healthcard/doctor/Addinfo.dart';
import 'package:healthcard/doctor/Scan.dart';
import 'package:http/http.dart' as http;
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthcard/Controller.dart';

int check = 0;

Controller c = Get.put(Controller());

class Viewinfo extends StatefulWidget {
  String namefromScan;
  Viewinfo({required this.namefromScan});

  @override
  State<Viewinfo> createState() => _ViewinfoState();
}

class _ViewinfoState extends State<Viewinfo> {
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
        body: SingleChildScrollView(
          child: check == 1
              ? Container(
                  padding: EdgeInsets.all(10),
                  child: Column(children: [
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
                      height: 50,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 35,
                            height: 75,
                            child: TextButton(
                                style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  backgroundColor: Color(0xff7A87FB),
                                  // foregroundColor: Color(0xff000000),
                                  //padding: EdgeInsets.fromLTRB(-10,50,-10,50),
                                ),
                                onPressed: () {
                                  // setState(() {
                                  //   widget.namefromScan = null;
                                  // });

                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return QRViewExample();
                                  }));
                                },
                                child: FaIcon(
                                  FontAwesomeIcons.angleLeft,
                                  color: Colors.black,
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: BlurryContainer(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Color.fromRGBO(255, 255, 255, 0.5),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Patient Details",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Name",
                                            style: TextStyle(
                                                fontSize: 8,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            data["name"],
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "username",
                                            style: TextStyle(
                                                fontSize: 8,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            data["username"],
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Gender",
                                            style: TextStyle(
                                                fontSize: 8,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Male",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Height",
                                                style: TextStyle(
                                                    fontSize: 8,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "${data["height"]}cm",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Weight",
                                                style: TextStyle(
                                                    fontSize: 8,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "${data["weight"]}cm",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Waist",
                                                style: TextStyle(
                                                    fontSize: 8,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "${data["waist"]}cm",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Blood Group",
                                            style: TextStyle(
                                                fontSize: 8,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "O+",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Color.fromRGBO(255, 255, 255, 0.5),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Allergies",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20),
                                    ),
                                  ),
                                  Container(
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: data["allergies"].length,
                                      itemBuilder: (context, index) {
                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                data["allergies"][index],
                                                style: TextStyle(),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Color.fromRGBO(255, 255, 255, 0.5),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Medicines",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20),
                                    ),
                                  ),
                                  Container(
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: data["medicines"].length,
                                      itemBuilder: (context, index) {
                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  Text(
                                                    data["medicines"][index][0],
                                                    style: TextStyle(),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    data["medicines"][index][1],
                                                    style: TextStyle(),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Color.fromRGBO(255, 255, 255, 0.5),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Operations",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20),
                                    ),
                                  ),
                                  Container(
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: data["operations"].length,
                                      itemBuilder: (context, index) {
                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        (index + 1).toString() +
                                                            ". ",
                                                        style: TextStyle(),
                                                      ),
                                                      SizedBox(
                                                        width: 2,
                                                      ),
                                                      Text(
                                                        data["operations"]
                                                            [index][0],
                                                        style: TextStyle(),
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        "on ",
                                                        style: TextStyle(),
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        data["operations"]
                                                            [index][1],
                                                        style: TextStyle(),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Description: ",
                                                        style: TextStyle(),
                                                      ),
                                                      Text(
                                                        data["operations"]
                                                            [index][2],
                                                        style: TextStyle(),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Color.fromRGBO(255, 255, 255, 0.5),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Prescriptions",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20),
                                    ),
                                  ),
                                  Container(
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: data["prescriptions"].length,
                                      itemBuilder: (context, index) {
                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        (index + 1).toString() +
                                                            ". ",
                                                        style: TextStyle(),
                                                      ),
                                                      SizedBox(
                                                        width: 2,
                                                      ),
                                                      Text(
                                                        data["prescriptions"]
                                                            [index][0],
                                                        style: TextStyle(),
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 2,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "medicine: " +
                                                            data["prescriptions"]
                                                                [index][1],
                                                        style: TextStyle(),
                                                      ),
                                                      Text(
                                                        "  " +
                                                            data["prescriptions"]
                                                                [index][3],
                                                        style: TextStyle(),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "till: ",
                                                        style: TextStyle(),
                                                      ),
                                                      Text(data["prescriptions"]
                                                          [index][2]),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 4,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              blur: 15,
                              elevation: 0,
                              color: Color.fromRGBO(255, 255, 255, 0.4),
                              padding:
                                  const EdgeInsets.fromLTRB(20, 20, 20, 20),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(39)),
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
                )
              : Padding(
                  padding: const EdgeInsets.only(top: 400),
                  child: Center(
                    child: CupertinoActivityIndicator(
                      color: Colors.black,
                    ),
                  ),
                ),
        ),

    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Add_prescription()));
      },
    )
    );
  }

  dynamic fetchToknens() async {
    print("oioioi");
    Map newUpdate = {
      "username": widget.namefromScan,
      "doctor_username": "salmanxy"
    };
    final url = Uri.parse(c.url.toString() + "auth/user");
    print(url.toString() + "url");

    final response = await http.post(url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode(newUpdate));
    // print(response.body);
    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body)["user"];
        print("///");
        print(data);
      });

      setState(() {
        check = 1;
      });
      return data;
    }
  }
}
