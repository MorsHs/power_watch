import 'package:flutter/material.dart';
import 'package:power_watch/constant/color.dart';

class DropDownLocation extends StatefulWidget {
  const new({super.key});

  @override
  State<DropDownLocation> createState() => _DropDownLocationState();
}

class _DropDownLocationState extends State<DropDownLocation> {
  String? value;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder( //Layout Builder for constraint of the parent size instead mag gamit ug mediaquery
      builder: (context, constraints) => DropdownMenu( 
        width: constraints.maxWidth * 0.9,
        leadingIcon: Icon(
          Icons.pin_drop,
          color: Colors.red,
        ), //Ts doesnt work.. PR Fix on bottom
        textStyle: TextStyle(
          color: AppColors.background,
          fontWeight: FontWeight.bold,
        ),
        decorationBuilder: (context, controller) => InputDecoration(
          fillColor: AppColors.whiteText,
          filled: true,
          prefixIcon: Icon(Icons.pin_drop_outlined),
        ), //https://github.com/flutter/flutter/pull/185445
        enableFilter: true,
        enableSearch: true,
        menuStyle: MenuStyle(
        ),
        onSelected: (value) => setState(() {
           this.value = value;
        }),       
        dropdownMenuEntries: <DropdownMenuEntry>[
          DropdownMenuEntry(value: 'Apokon', label: 'Apokon'),
          DropdownMenuEntry(value: 'Magugpo East', label: 'Magugpo East'),
          DropdownMenuEntry(value: 'Quambugan', label: 'Quambugan'),
          DropdownMenuEntry(value: 'Magugpo South', label: 'Magugpo South'),
        ],
      ),
    );
  }

  TextStyle styler() {
    return TextStyle(color: Colors.red);
  }
}
