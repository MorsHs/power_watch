import 'package:flutter/material.dart';
import '../widgets/ForgotButton.dart';
import '../widgets/LoginButton.dart';
import '../widgets/TextFieldBar.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 15,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Power Watch', style: TextStyle(fontSize: 35)),
            ],
          ),
          Text('Welcome!', style: TextStyle(fontSize: 20)),
          TextFieldBar(text: 'Username/Email', obscureText: false),
          TextFieldBar(text: 'Password', obscureText: true),
          LoginButton(),
          ForgotButton(),
        ],
      ),
    );
  }
}
