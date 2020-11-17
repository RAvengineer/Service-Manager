import 'package:flutter/material.dart';

class TrainDetailsColumn extends StatelessWidget {
  final String title, time, stn;
  TrainDetailsColumn(this.title, this.time, this.stn);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(time),
        Text(
          stn,
          style: TextStyle(
            color: Color(0xFFF95F62),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
