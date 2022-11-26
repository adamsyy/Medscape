import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class scheme extends StatelessWidget {
  const scheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          color: const Color(0xff9AC9C2),
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30
                    ),

                BlurryContainer(
                  blur: 15,
                  elevation: 0,
                  color: const Color.fromRGBO(255, 255, 255, 0.4),
                  padding: const EdgeInsets.fromLTRB(14, 0, 14, 24),
                  borderRadius: const BorderRadius.all(
                      Radius.circular(29)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50
                      ),
                      Center(
                        child: Container(
                            height: 35,
                            width: 249,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(21),
                                color: Color.fromRGBO(255, 255, 255, 0.5)),
                            child: Text("Scheme 1",
                                textAlign: TextAlign.center,
                                style:
                                TextStyle(
                                    fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 30),),
                        ),
                      ),
                      Text("\nThe first version of Flutter was known as Sky and ran on the Android operating system. It was unveiled at the 2015 Dart developer summit[8] with the stated intent of being able to render consistently at 120 frames per second.[9] During the keynote of Google Developer Days in Shanghai in September 2018, Google announced Flutter Release Preview 2, the last major release before Flutter 1.0. On December 4th of that year, Flutter 1.0 was released at the Flutter Live event, denoting the first stable version of the framework. On December 11, 2019, Flutter 1.12 was released at the Flutter Interactive event.\n",
                        textAlign: TextAlign.left,
                        style:
                        TextStyle(
                            fontWeight: FontWeight.w500, fontFamily: 'Poppins',fontSize: 18,),),
                  Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: MaterialButton(
                      onPressed: () => {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xff7A87FB),
                        ),
                        height: 42,
                        width: 131,
                        alignment: Alignment.center,
                        child: Text(
                          'Apply',
                          style:  TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,

                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                  ),
                    ],
                  ),
                ),
                  ],
                ),
              ),
            ],
          ),

        ));
  }
}
