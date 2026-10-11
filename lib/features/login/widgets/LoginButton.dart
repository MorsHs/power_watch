import 'package:flutter/material.dart';
import '../../LandingPage/pages/LandingPage.dart';


class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: FilledButton(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (context) => const LandingPage()),
        ),
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(2),
            ),
          ),
        ),
        child: const Text('Login', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
