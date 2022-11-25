import 'dart:convert';
import 'package:get/get.dart';
import 'package:healthcard/Controller.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

Controller c = Get.put(Controller());

class Addinfo extends StatefulWidget {
  const Addinfo({Key? key}) : super(key: key);

  @override
  State<Addinfo> createState() => _AddinfoState();
}

class _AddinfoState extends State<Addinfo> {
  @override
  void initState() {
    // TODO: implement initState
    checker();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
    );
  }

  dynamic operation() async {
    print("oioioi");
    Map newUpdate = {
      "patient_username": "adamsy",
      "doctor_username": "salmanxy",
      "operations": ["neck durgery", "11 december 2021", "no info"]
    };
    final url = Uri.parse(c.url.toString() + "operations/doctor");
    print(url.toString() + "url");

    final response = await http.post(url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode(newUpdate));
    // print(response.body);
    if (response.statusCode == 200) {
      print("done");
      setState(() {});
    }
  }

  dynamic allergies() async {
    print("oioioi");
    Map newUpdate = {
      "patient_username": "adamsy",
      "doctor_username": "salmanxy",
      "allergies": "alcohol"
    };
    final url = Uri.parse(c.url.toString() + "allergies/doctor");
    print(url.toString() + "url");

    final response = await http.post(url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode(newUpdate));
    // print(response.body);
    if (response.statusCode == 200) {
      print("done");
      setState(() {});
    }
  }

  dynamic rescriptions() async {
    print("oioioi");
    Map newUpdate = {
      "patient_username": "adamsy",
      "doctor_username": "salmanxy",
      "prescriptions": ["Dr ambedkar", "paracetamol", "6th jan", "250mg"],
    };
    final url = Uri.parse(c.url.toString() + "prescriptions/doctor");
    print(url.toString() + "url");

    final response = await http.post(url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode(newUpdate));
    // print(response.body);
    if (response.statusCode == 200) {
      print("done");
      setState(() {});
    }
  }

  void checker() async {
    await operation();
  }
}
