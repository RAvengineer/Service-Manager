import 'package:flutter/material.dart';
import 'package:service_manager/widgets/appbar_icon.dart';

class CommonAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF011627),
      height: 75.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AppBarIcon(
            filename: "assets/images/Raster_0.png",
            color: Colors.white,
          ),
          AppBarIcon(
            filename: "assets/images/Raster_1.png",
            color: Colors.white,
          ),
          SizedBox(
            width: 5.0,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Service Manager",
              style: TextStyle(
                color: Colors.white,
                fontSize: 21.0,
                fontFamily: "Norwester",
              ),
            ),
          ),
          SizedBox(
            width: 30.0,
          ),
          AppBarIcon(
            filename: "assets/images/Raster_2.png",
            color: Color(0xFF8080C5),
          ),
        ],
      ),
    );
  }
}
