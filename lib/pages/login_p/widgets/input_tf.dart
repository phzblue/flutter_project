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
            const Expanded(child: Text("ID")),
            Expanded(
              flex: 3,
              child: MyWhiteTextField(
                onChanged: (s) {
                  loginC.id.value = s;
                },
                defaultText: loginC.id.value,
              ),
            )
          ],
        ),
        Row(
          children: [
            const Expanded(child: Text("Email")),
            Expanded(
              flex: 3,
              child: MyWhiteTextField(
                onChanged: (s) {
                  loginC.email.value = s;
                },
                defaultText: loginC.email.value,
              ),
            )
          ],
        ),
      ],
    );
  }
}
