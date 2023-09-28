import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  static const String routeName = "screen3";

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ChoiceChip(
        label: Text("data"),
        selected: isSelected,
        onSelected: (bool IsSelected) {
          setState(() {
            isSelected = IsSelected;
          });
        },
        surfaceTintColor: Colors.red,
        disabledColor: Colors.blue,
        shadowColor: Colors.green,
        checkmarkColor: Colors.black,
        selectedShadowColor: Colors.lightBlueAccent,
            selectedColor: Colors.amber,
      )),
    );
  }
}
