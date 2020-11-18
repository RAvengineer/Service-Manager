import 'package:flutter/material.dart';

class GetLocation extends StatefulWidget {
  static const id = "get_location";

  @override
  _GetLocationState createState() => _GetLocationState();
}

class _GetLocationState extends State<GetLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                color: Colors.lightGreenAccent,
                child: Text("Get Location and Address"),
                onPressed: () => {},
              ),
              Text("Location Obtained"),
            ],
          ),
        ),
      ),
    );
  }
}
