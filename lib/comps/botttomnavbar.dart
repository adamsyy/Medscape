import 'package:flutter/material.dart';

Widget bottomnav(){
  return Container(child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Icon(Icons.notification_add_outlined,color: Colors.white,size: 38,),
      Icon(Icons.list_alt_rounded,color: Colors.white,size: 38),
      Icon(Icons.person_outline_rounded ,color: Colors.white,size: 38),
    ],
  ),
    height: 54,
    width:  315,
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(18),
    ),
  );
}