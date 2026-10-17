import 'package:flutter/material.dart';

class Cardannoucement extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.red.shade700,
      //Latest Report in your area card
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
                    color: Colors.red.shade400,
                  ),
                  child: Icon(Icons.electric_bolt, color: Colors.white),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Power Outage Reported',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Partial outage in your area',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        'Apokon, Tagum City',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        'Sep 30, 2024 - 8:00 AM - 5:00 PM',
                        style: TextStyle(fontSize: 15),
                      ),
                      //insert mga caption sleep well sako
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
