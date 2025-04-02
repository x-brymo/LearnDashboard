import 'package:flutter/material.dart';

class DayColumn extends StatelessWidget {
  final String day;

  const DayColumn({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      child: Text(
        day,
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}