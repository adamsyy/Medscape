import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthcard/Controller.dart';
import 'package:healthcard/Home.dart';
import 'package:healthcard/auth_screens/login.dart';
import 'package:healthcard/blogs/Blogs3.dart';
import 'package:healthcard/delivery/Blood.dart';
import 'package:healthcard/delivery/Medicine.dart';
import 'package:healthcard/delivery/Post_blood.dart';
import 'package:healthcard/delivery/Post_medicine.dart';
import 'package:healthcard/doctor/Firstpage.dart';
import 'package:healthcard/doctor/Viewinfo.dart';
import 'package:healthcard/patient/Profile.dart';
import 'package:healthcard/auth_screens/Signup2.dart';
import 'package:healthcard/doctor/Add_prescription.dart';
import 'package:healthcard/doctor/Scan.dart';
import 'package:healthcard/auth_screens/signUp1.dart';
import 'package:healthcard/patient/Reminder.dart';
import 'package:healthcard/blogs/Blogs2.dart';

void main() {
  runApp(GetMaterialApp(home:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {



    return MaterialApp(

        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily:"Poppins",

          primarySwatch: Colors.blue,
        ),
          home:Login(),
    );
  }
}