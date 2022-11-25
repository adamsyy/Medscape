import 'dart:convert';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:healthcard/Home.dart';
import 'package:healthcard/patient/Reminder.dart';
import 'package:qr_flutter/qr_flutter.dart';

int check = 0;

class Profile extends StatefulWidget {
  String namefromprofile;
  Profile({required this.namefromprofile});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
          backgroundColor: Color.fromRGBO(154, 201, 194, 1),
          appBar: AppBar(
            title: Text(
              "MedScape",
              style: TextStyle(
                  color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
            ),
            titleSpacing: 0,
            // systemOverlayStyle: SystemUiOverlayStyle(
            //   // Status bar color
            //   statusBarColor: Color.fromRGBO(179, 204, 255, 1),
            // ),
            backgroundColor: Color.fromRGBO(154, 201, 194, 1),
            elevation: 0,
            leading: IconButton(
              icon:
                  //solve overflow to right

                  Image.asset(
                "pics/logo.png",
                width: 40,
              ),
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body:check==1? Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 68),
                child: Container(
                  child: QrImage(
                    data: controller.username.value,
                    version: QrVersions.auto,
                    size: 250,
                    gapless: false,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300, left: 44, right: 44),
                child:  SingleChildScrollView(scrollDirection: Axis.vertical,
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
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              check=0;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Reminder()));
                            },
                            child: Icon(
                              Icons.notification_add_outlined,
                              color: Colors.white,
                              size: 38,
                            ),
                          ),
                          GestureDetector( onTap: () {
                            check=0;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                            child: Icon(Icons.list_alt_rounded,
                                color: Colors.white, size: 38),
                          ),
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
          ):Center(child: CupertinoActivityIndicator(),)
        ),
    );
  }









  dynamic fetchToknens() async {
    print("oioioi");
    Map newUpdate = {"username": widget.namefromprofile, "doctor_username": "salmanxy"};
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
        check=1;
      });
      return data;
    }
  }




}
