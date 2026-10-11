import 'package:flutter/material.dart';
import 'package:power_watch/constant/color.dart';
import 'package:power_watch/features/LandingPage/widgets/TextPicker.dart';
import 'package:curved_app_bar/curved_app_bar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('data'),
      appBar: CurvedAppBar(
        actions: [
          IconButton(
            onPressed: () => null,
            icon: Badge(
              label: Text('9'),
              child: Icon(
                Icons.notifications,
                color: AppColors.whiteText,
                size: 29,
              ),
            ),
          ),
        ],
        height: MediaQuery.of(context).size.height * 0.07,
        shape: CurvedAppBarShape.invertedRounded,
        curveRadius: 25,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(
            MediaQuery.of(context).size.height * 0.10,
          ),
          child: Column(children: [DropDownLocation()]),
        ),
        backgroundColor: AppColors.background,
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
