import 'package:flutter/material.dart';
import 'package:power_watch/constant/color.dart';
import 'package:power_watch/features/LandingPage/widgets/TextPicker.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(
            MediaQuery.of(context).size.height * 0.20,
          ),
          child: Column(children: [DropDownLocation(), SizedBox(height: 15)]),
        ),
        backgroundColor: AppColors.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25)),
        ),
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good morning,',
              style: TextStyle(fontSize: 16, color: AppColors.whiteText),
            ),
            Text(
              'Juan Dela Cruz',
              style: TextStyle(
                fontSize: 22,
                wordSpacing: 1,
                color: AppColors.whiteText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
