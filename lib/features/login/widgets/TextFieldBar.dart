import 'package:flutter/material.dart';

class TextFieldBar extends StatelessWidget {
  final String text;
  final bool obscureText;

  const TextFieldBar({super.key,required this.text,required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: text,
        ),
      ),
    );
  }
}
