import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/constant/controller.dart';

class GenderPicker extends StatelessWidget {
  const GenderPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Gender'),
        Expanded(
          child: Obx(
            () => DropdownButton(
                value: loginC.gender.value,
                items: loginC.choices
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
                onChanged: (String? s) {
                  loginC.gender.value = s!;
                }),
          ),
        ),
      ],
    );
  }
}
