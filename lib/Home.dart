import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:healthcard/Controller.dart';
import 'package:healthcard/blogs/Blogs2.dart';
import 'package:healthcard/delivery/Blood.dart';
import 'package:healthcard/delivery/Medicine.dart';
import 'package:healthcard/patient/Profile.dart';
import 'package:healthcard/patient/Reminder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:geolocator/geolocator.dart';

var lat,long;
int check=0;
Controller controller = Get.put(Controller());

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>

{
  @override
  void initState() {
    // TODO: implement initState
    determinePosition();

    super.initState();
  }
  @override
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
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Health This",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Week!",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(onTap: (){

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) =>  Blogs2()),
                                    );

                                },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        height: 26,
                                        width: 98,
                                        decoration: BoxDecoration(
                                            //add radius

                                            borderRadius:
                                                BorderRadius.circular(18),
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.5)),
                                        child: Center(child: Text("Read more"))),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              "pics/blog.png",
                              width: 167,
                              height: 103,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: GlassmorphicContainer(
                        width: 329,
                        height: 88,
                        borderRadius: 20,
                        blur: 20,
                        alignment: Alignment.bottomCenter,
                        border: 2,
                        linearGradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFFffffff).withOpacity(0.1),
                              Color(0xFFFFFFFF).withOpacity(0.05),
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
                            SizedBox(width: 8,),
                            GestureDetector(onTap: ()async{


                              final Uri _url = Uri.parse("geo:${controller.lat},${controller.long}?q=hospitals");
                              await launch(_url.toString());
                            },
                              child: Column(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: Color.fromRGBO(255, 255, 255, 0.5)),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Image.asset(
                                            "pics/home1.png",
                                            width: 36,
                                            height: 33,
                                          ),
                                          Text(
                                            "Nearby",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10),
                                          ),
                                          Text(
                                            "Hospitals",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            GestureDetector(onTap: ()async{
                              final Uri _url = Uri.parse("geo:${controller.lat},${controller.long}?q=pharmacy");
                              await launch(_url.toString());
                            },
                              child: Column(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: Color.fromRGBO(255, 255, 255, 0.5)),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Image.asset(
                                            "pics/home2.png",
                                            width: 36,
                                            height: 33,
                                          ),
                                          Text(
                                            "Nearby",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10),
                                          ),
                                          Text(
                                            "Pharmasy",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            GestureDetector(onTap: ()async{

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Medicine()),
                                );

                            },
                              child: Column(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: Color.fromRGBO(255, 255, 255, 0.5)),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Image.asset(
                                            "pics/home3.png",
                                            width: 36,
                                            height: 33,
                                          ),
                                          Text(
                                            "Deliver",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10),
                                          ),
                                          Text(
                                            "Medicnes",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            GestureDetector(onTap: ()async{
                             print("ehhh");
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => Blood()),
                             );
                            },
                              child: Column(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: Color.fromRGBO(255, 255, 255, 0.5)),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Image.asset(
                                            "pics/home4.png",
                                            width: 36,
                                            height: 33,
                                          ),
                                          Text(
                                            "Donate",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10),
                                          ),
                                          Text(
                                            "Blood",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                          ],
                        ),
                      ),
                    ),
                  ]),
            )):Center(child: CupertinoActivityIndicator(),),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Reminder()),
                          );
                        },
                          child: Icon(
                            Icons.notification_add_outlined,
                            color: Colors.white,
                            size: 38,
                          ),
                        ),
                        Icon(Icons.list_alt_rounded,
                            color: Colors.white, size: 38),
                        GestureDetector(onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Profile()),
                          );
    },
                          child: Icon(Icons.person_outline_rounded,
                              color: Colors.white, size: 38),
                        ),
                      ],
                    ),
                    height: 54,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                )),   ],
        ));
  }









  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    var locations=await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    lat=locations.latitude;
    long=locations.longitude;
    controller.lat.value=lat;
    controller.long.value=long;
    print(lat);

    setState(() {
check=1;
    });
    return await Geolocator.getCurrentPosition();
  }



}
