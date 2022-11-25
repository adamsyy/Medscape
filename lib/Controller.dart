import 'package:get/get.dart';

class Controller extends GetxController{
  var count = 0.obs;
  var lat = 10.372250.obs;
  var long = 76.305794.obs;
  var username="adamsy".obs;
  var url="https://healthcard1.herokuapp.com/".obs;
  //boolean isdoctor = false.obs;
  var isdoctor = false.obs;
  increment() => count++;
}