import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:project1/class/profile.dart';
import 'package:project1/constant/controller.dart';

class LoginC extends GetxController {
  static LoginC instance = Get.find();

  RxBool loginInProgress = false.obs;
  RxString id = ''.obs;
  RxString email = ''.obs;
  RxString gender = ''.obs;

  final List<String> choices = ['', 'Female', 'Male'];

  Future<void> loginProcess() async {
    try {
      // Map<String, dynamic> payload = {
      //   "token": "NsYQS1Mmkj4wTpSr06Mguw",
      //   "data": {
      //     "id": id,
      //     "email": email,
      //     "gender": gender,
      //     "last_login": {
      //       "date_time": DateTime.now().toUtc().millisecondsSinceEpoch,
      //       "ip4": "internetIP4",
      //     },
      //   }
      // };

      //await globalC.client.getProfile(payload);
      //success assumption
      globalC.profileData = Profile.fromJson(
        {
          "email": "month_iliana@yahoo.com",
          "gender": "male",
          "id": "sir.sound",
          "last_login": {
            "date_time": "Sun Sep 14 14:39:37 UTC 2036",
            "ip4": "173.176.106.53"
          }
        },
      );
      await Future.delayed(const Duration(seconds: 1));

      // loginInProgress.toggle();
    } catch (e) {
      switch (e.runtimeType) {
        case DioError:
          //success assumption

          final res = (e as DioError).response;
          throw ("Got error : ${res!.statusCode} -> ${res.statusMessage}");
        default:
          throw (e.toString());
      }
    }
  }
}
