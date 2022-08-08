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
      body: Obx(
        () => Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
              title: const Text('Warning!'),
              children: [
                Text(snapshot.error.toString()),
                ElevatedButton(
                  onPressed: () {
                    loginC.loginInProgress.value = false;
                  },
                  child: const Text('Confirm'),
                ),
              ],
            );
          } else {
            AutoRouter.of(context).replace(const ProfileRoute());
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
