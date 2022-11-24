import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  String? x;
   Test({required this.x});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.pink,
    child: Center(
      child: Text(widget.x.toString()),
    ),);
  }
}

