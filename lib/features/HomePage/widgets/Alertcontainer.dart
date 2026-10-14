import 'package:flutter/material.dart';

class Alertcard extends StatelessWidget {
  //can be used in alert

  final String title;
  final String location;
  final String date; //TODO convert to datetime
  final Color color;
  final IconData icon;

  const new({
    super.key,
    required this.title,
    required this.location,
    required this.date,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsetsGeometry.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: this.color,
                  ),
                  child: Icon(this.icon, color: Colors.white),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        this.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        this.location,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(this.date),
                    ],
                  ),
                ),
                IconButton(onPressed: () => null, icon: Icon(Icons.keyboard_arrow_right)) //Ridirect to infomation screen
              ],
            ),
          ],
        ),
      ),
    );
  }
}
