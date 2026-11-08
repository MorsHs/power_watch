import 'package:flutter/material.dart';
import 'package:power_watch/constant/color.dart';
import 'package:power_watch/features/Alerts/widgets/AlertContainer.dart';

class MyAlarms extends StatefulWidget {
  const new({super.key});

  @override
  State<MyAlarms> createState() => _MyAlarmsState();
}

class _MyAlarmsState extends State<MyAlarms> {
  final List<String> filters = ['All', 'Outages', 'Scheduled', 'Restored'];

  String selectedFilter = 'All';

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        spacing: 20,
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 8,
            children: filters.map((filter) {
              return ChoiceChip(
                labelStyle: TextStyle(
                  color: selectedFilter == filter
                      ? Colors.white
                      : AppColors.background,
                ),
                selectedColor: AppColors.background,
                showCheckmark: false,
                label: Text(filter),
                selected: selectedFilter == filter,
                onSelected: (selected) {
                  setState(() {
                    selectedFilter = filter;
                  });
                },
              );
            }).toList(),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              separatorBuilder: (context, index) => SizedBox(height: 5),
              itemBuilder: (context, index) => Alertcontainer(
                title: 'Power Outage',
                location: 'Purok Magugpo East Tagum City',
                date: 'Sept 10, 2024 -  8:00 AM - 12:00 NN',
                color: Colors.yellow,
                icon: Icons.electric_bolt,
              ),
              
            ),
          ),
        ],
      ),
    );
  }
}
