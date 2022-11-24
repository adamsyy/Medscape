import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:healthcard/Controller.dart';
import 'package:healthcard/doctor/Addinfo.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

//import 'package:http/http.dart' as http;
Controller c = Get.put(Controller());

int check = 0;

class Blogs extends StatefulWidget {
  String username;
  Blogs({required this.username});

  @override
  State<Blogs> createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  @override
  void initState() {
    // TODO: implement initState
    print("checking if this works");
    check = 0;
    dataFuture = fetchToknens();
    super.initState();
  }

  late var data;
  late var dataFuture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.username),
      ),
      body: check == 1
          ? Center(
        child: Column(
          children: [Text(data["email"])],
        ),
      )
          : CupertinoActivityIndicator(),
      //add floating action button

      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(

              builder: (context) {


                return Addinfo();}

          ));
        },
      ),

    );
  }

  dynamic fetchToknens() async {
    print("oioioi");
    Map newUpdate = {"username": "adamsy", "doctor_username": "salmanxy"};
    final url = Uri.parse(c.url.toString() + "blogs/get");
    print(url.toString() + "url");

    final response = await http.get(url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        );
    // print(response.body);
    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body)["blogs"];
        print("///");
        print(data[0]);
      });

      setState(() {
        check = 1;
      });
      return data;
    }
  }
}
