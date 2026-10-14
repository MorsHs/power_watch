import 'package:flutter/material.dart';

class Reusablecards extends StatelessWidget {
  const new({
    super.key,
    required this.title,
    required this.count,
    required this.total,
    required this.color,
    required this.icon,
  });
  final String title;
  final int count;
  final int total;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: this.color,
              ),
              child: Icon(icon, color: Colors.white),
            ),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            Text(
              '${this.count} / ${this.total}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
