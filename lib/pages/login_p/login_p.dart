import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/constant/controller.dart';
import 'package:project1/controller/login_c.dart';
import 'package:project1/pages/login_p/widgets/dd_picker.dart';
import 'package:project1/pages/login_p/widgets/input_tf.dart';
import 'package:project1/routes/router.gr.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginC());
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: Obx(
        () => Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const InputField(),
                    const GenderPicker(),
                    Center(
                      child: ElevatedButton(
                          onPressed: () {
                            loginC.loginInProgress.value = true;
                          },
                          child: const Text('Login')),
                    ),
                  ],
                ),
              ),
            ),
            loginC.loginInProgress.value ? const LoginProgress() : Container()
          ],
        ),
      ),
    );
  }
}

class LoginProgress extends StatelessWidget {
  const LoginProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loginC.loginProcess(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return SimpleDialog(
              contentPadding: const EdgeInsets.all(20),
              title: const Text('Warning!'),
              children: [
                Text(snapshot.error.toString()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        loginC.loginInProgress.value = false;
                      },
                      child: const Text('Confirm'),
                    ),
                  ),
                ),
              ],
            );
          } else {
            AutoRouter.of(context).push(const ProfileRoute());
            return Container();
          }
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      }),
    );
  }
}
