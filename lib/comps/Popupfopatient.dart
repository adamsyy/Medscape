import 'package:flutter/material.dart';

class Popupfopatient extends StatefulWidget {
  const Popupfopatient({Key? key}) : super(key: key);

  @override
  State<Popupfopatient> createState() => _PopupfopatientState();
}

class _PopupfopatientState extends State<Popupfopatient> {
  @override
  void initState() {
    // TODO: implement initState
    print("hehe");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            width: 300,
            decoration: BoxDecoration(
              color: Colors.transparent,
              //give border radius
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 70,),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(1, 188, 143, 1),
                        //give border radius
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("`Add Medical History",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                        )),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),
                //container with shadow

                Container(
                  height: 30,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(27)),
                      color: Colors.yellow.withOpacity(0.3)),
                  child: Center(child: Text("Add Allergies")),
                ),

                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 0, 18, 7),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Name",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.22),
                    ),
                  ),
                ),
                //container with shadow
                Container(
                  height: 30,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(27)),
                      color: Colors.yellow.withOpacity(0.3)),
                  child: Center(child: Text("Add Medicnes")),
                ),

                SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 0, 18, 7),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Medicine",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.22),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),

                SizedBox(
                  height: 7,
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 0, 18, 7),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Dose",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.22),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                //container with shadow

                Container(
                  height: 30,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(27)),
                      color: Colors.yellow.withOpacity(0.3)),
                  child: Center(child: Text("Add Operation data")),
                ),

                SizedBox(
                  height: 7,
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 0, 18, 7),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Name",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.22),
                    ),
                  ),
                ),

                SizedBox(
                  height: 7,
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 0, 18, 7),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Date",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.22),
                    ),
                  ),
                ),

                SizedBox(
                  height: 7,
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 0, 18, 7),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Description",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.22),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100, right: 100),
                  child: Container(
                      height: 42,
                      width: 131,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromRGBO(122, 135, 251, 1),
                      ),
                      child: Center(
                        child: Text(
                          "Save",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      )),
                )
              ],
            )),
      ),
    );
  }
}
