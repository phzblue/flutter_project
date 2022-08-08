import 'package:dio/dio.dart';
import 'package:get/get.dart';
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
      Map<String, dynamic> payload = {
        "token": "NsYQS1Mmkj4wTpSr06Mguw",
        "data": {
          "id": id,
          "email": email,
          "gender": gender,
          "last_login": {
            "date_time": DateTime.now().toUtc().millisecondsSinceEpoch,
            "ip4": "internetIP4",
          },
        }
      };

      globalC.profileData = await globalC.client.getProfile(payload);
      loginInProgress.toggle();
    } catch (e) {
      switch (e.runtimeType) {
        case DioError:
          final res = (e as DioError).response;
          throw ("Got error : ${res!.statusCode} -> ${res.statusMessage}");
        default:
          break;
      }
    }
  }
}
