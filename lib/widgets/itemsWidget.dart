import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String title;
  final int count;
  ItemWidget({this.title, this.count});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          " $count",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
