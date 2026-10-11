import 'package:flutter/material.dart';

class ForgotButton extends StatelessWidget {
  const ForgotButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => null,
      child: Text('Forgot password?'),
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(2),
          ),
        ),
      ),
    );
  }
}
