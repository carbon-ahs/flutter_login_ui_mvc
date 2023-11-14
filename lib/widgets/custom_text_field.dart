import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsCuretext,
  });

  final TextEditingController controller;
  final String hintText;
  final bool obsCuretext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: TextField(
        controller: controller,
        obscuringCharacter: '•',
        obscureText: obsCuretext,
        decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black87),
        ),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
