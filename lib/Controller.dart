import 'package:get/get.dart';

class Controller extends GetxController{
  var count = 0.obs;
  var lat = 10.372250.obs;
  var long = 76.305794.obs;
  var username="adamsy".obs;
  var height=0.obs;
  var weight=0.obs;
  var waist=0.obs;
  var sex="".obs;
  var url="https://medscape-backend-kqaedxbz4-weberstills.vercel.app/".obs;
  //boolean isdoctor = false.obs;
  var isdoctor = false.obs;
  increment() => count++;
}