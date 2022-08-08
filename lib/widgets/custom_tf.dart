import 'package:flutter/material.dart';

class MyWhiteTextField extends StatelessWidget {
  const MyWhiteTextField({this.defaultText = '', this.onChanged, Key? key})
      : super(key: key);

  final String defaultText;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    TextEditingController c = TextEditingController();
    c.text = defaultText;

    return TextField(
      maxLength: 200,
      controller: c,
      onChanged: onChanged,
      decoration: InputDecoration(
        counter: const Offstage(),
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        filled: true,
        fillColor: Colors.white,
        hintStyle: TextStyle(color: Colors.blueAccent.shade100),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
