import 'package:flutter/material.dart';
import 'package:project1/constant/controller.dart';
import 'package:project1/widgets/custom_tf.dart';

class InputField extends StatelessWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text("ID"),
            MyWhiteTextField(
              onChanged: (s) {
                loginC.id.value = s;
              },
              defaultText: loginC.id.value,
            )
          ],
        ),
        Row(
          children: [
            const Text("Email"),
            MyWhiteTextField(
              onChanged: (s) {
                loginC.email.value = s;
              },
              defaultText: loginC.email.value,
            )
          ],
        ),
      ],
    );
  }
}
