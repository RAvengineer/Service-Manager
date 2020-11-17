import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  final String filename;
  final Color color;
  AppBarIcon({this.filename, this.color});
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
//        padding: EdgeInsets.symmetric(vertical: 5.0),
        alignment: Alignment.center,
        child: new Image.asset(
          filename,
          color: color,
        ),
      ),
    );
  }
}
