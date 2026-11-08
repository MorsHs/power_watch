import 'package:flutter/material.dart';

class Alertcontainer extends StatelessWidget {
  final String title;
  final String location;
  final String date; //convert to datetime
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
    return FractionallySizedBox(
      widthFactor: 0.95,
      child: Card(
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
                        FittedBox(
                          child: Text(
                            'Power Outage Reported',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        FittedBox(
                          child: Text(
                            'Partial outage in your area',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        FittedBox(
                          child: Text(
                            'Apokon, Tagum City',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        FittedBox(
                          child: Text(
                            'Sep 30, 2024 - 8:00 AM - 5:00 PM',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        //insert mga caption sleep well sako
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.keyboard_arrow_right),
                  ), //Ridirect to infomation screen
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
