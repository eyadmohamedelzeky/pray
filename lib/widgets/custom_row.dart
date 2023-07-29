// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class Custom_Row extends StatelessWidget {
  String name_of_the_prayer;
  String Time;
  Custom_Row({required this.name_of_the_prayer, required this.Time});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$name_of_the_prayer',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text('${Time}')
        ],
      ),
    );
  }
}
