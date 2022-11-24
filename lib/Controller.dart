import 'package:get/get.dart';

class Controller extends GetxController{
  var count = 0.obs;
  var lat = 0.0.obs;
  var long = 0.0.obs;
  var url="https://healthcard1.herokuapp.com/".obs;
  //boolean isdoctor = false.obs;
  var isdoctor = false.obs;
  increment() => count++;
}