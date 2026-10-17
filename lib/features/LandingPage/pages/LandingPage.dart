import 'package:flutter/material.dart';
import 'package:power_watch/constant/color.dart';
import 'package:power_watch/features/HomePage/pages/HomePage.dart';
import 'package:power_watch/features/LandingPage/widgets/TextPicker.dart';
import 'package:curved_app_bar/curved_app_bar.dart';
import 'package:power_watch/features/NavigationBar/NavigationBar.dart';
import 'package:power_watch/features/Alerts/pages/alerts.dart';
import 'package:power_watch/features/Map/pages/map.dart';
import 'package:power_watch/features/Menu/pages/menu.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;

  late final List<Widget> pages = [
    const HomePage(),
    const MyMap(),
    const MyAlarms(),
    const MyMenu(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: IndexedStack(index: selectedIndex, children: pages),
      bottomNavigationBar: NavBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
      ),
    );
  }

  PreferredSizeWidget? getAppBar() {
    switch (selectedIndex) {
      case 0:
        return CurvedAppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Badge(
                label: const Text('9'),
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
              MediaQuery.of(context).size.height * 0.12,
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
        );

      case 1:
        return AppBar(
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(
              MediaQuery.of(context).size.height * 0.08,
            ),
            child: Column(
              children: [
                FractionallySizedBox(
                  widthFactor: 0.9,
                  child: SearchBar(
                    leading: Icon(Icons.search),
                    hintText: 'Search area or barangay',
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(5),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,)
              ],
            ),
          ),
          automaticallyImplyLeading: false,
          leading: Icon(Icons.map_rounded, color: AppColors.whiteText),
          title: Text(
            'Outage Map',
            style: TextStyle(color: AppColors.whiteText),
          ),
          backgroundColor: AppColors.background,
        );

      default:
        AppBar();
    }
  }
}
