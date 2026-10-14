import 'package:flutter/material.dart';
import 'package:power_watch/features/HomePage/widgets/Alertcontainer.dart';
import 'package:power_watch/features/HomePage/widgets/CardAnnoucement.dart';
import 'package:power_watch/features/HomePage/widgets/ReusableCards.dart';

class HomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 10, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Cardannoucement(),
          GridView.count(
            physics: NeverScrollableScrollPhysics(),
            mainAxisExtent: 150,
            shrinkWrap: true,
            crossAxisCount: 2,
            children: [
              Reusablecards(  //Cards are clickable and routes to map
                title: 'Areas With Power',
                count: 3,
                color: Colors.green,
                icon: Icons.electric_bolt,
                total: 5,
              ),
              Reusablecards(
                title: 'Affected Areas',
                count: 2,
                color: Colors.red,
                icon: Icons.electric_bolt,
                total: 5,
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Latest Advisories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              TextButton(
                onPressed: () => null,
                child: Text(
                  'See All',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.blue.shade900,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) => Alertcard(
                color: Colors.blueAccent,
                date: 'Sep 30, 2024 - 8:00 AM - 12 NN',
                icon: Icons.build,
                location: 'Apokon, Tagum City',
                title: 'Scheduled Maintenace',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
