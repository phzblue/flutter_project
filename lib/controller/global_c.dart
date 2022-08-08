import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:project1/class/profile.dart';
import 'package:project1/controller/rest_client.dart';

class GlobalC extends GetxController {
  static GlobalC instance = Get.find();

  late Profile profileData;

  final _dio = Dio();
  late RestClient client;

  GlobalC() {
    client = RestClient(_dio);
  }
}
