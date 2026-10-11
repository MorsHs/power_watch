import 'package:flutter/material.dart';
import 'package:power_watch/constant/color.dart';

class DropDownLocation extends StatefulWidget {
  new({super.key});

  @override
  State<DropDownLocation> createState() => _DropDownLocationState();
}

class _DropDownLocationState extends State<DropDownLocation> {
  String? value;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      // TODO add icon
      textStyle: TextStyle(color: AppColors.background,fontWeight: FontWeight.bold),
      decorationBuilder: (context, controller) =>
          InputDecoration(fillColor: AppColors.whiteText, filled: true,),
      enableFilter: true,
      enableSearch: true,
      onSelected: (value) => this.value = value,
      dropdownMenuEntries: <DropdownMenuEntry>[
        DropdownMenuEntry(value: 'Apokon', label: 'Apokon'),
        DropdownMenuEntry(value: 'Magugpo East', label: 'Magugpo East'),
        DropdownMenuEntry(value: 'Quambugan', label: 'Quambugan'),
        DropdownMenuEntry(value: 'Magugpo South', label: 'Magugpo South'),
      ],
    );
  }

  TextStyle styler (){
    return TextStyle(color: Colors.red);
  }
}
