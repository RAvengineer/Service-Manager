import 'package:flutter/material.dart';
import 'package:service_manager/utilites/get_address.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetLocation extends StatefulWidget {
  static const id = "get_location";

  @override
  _GetLocationState createState() => _GetLocationState();
}

class _GetLocationState extends State<GetLocation> {
  GetAddress _getAddress = GetAddress();
  String gpsCoordinates = '', address = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                color: Colors.lightGreenAccent,
                child: Text("Get Location and Address"),
                onPressed: () async {
                  if (!_getAddress.serviceEnabled) {
                    Navigator.maybePop(context);
                    return;
                  }
                  await _getAddress.getCurrentAddress();
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  setState(() {
                    gpsCoordinates =
                        'GPS Coordinates: ${_getAddress.latitude} N, ${_getAddress.longitude} E ';
                    address = 'Address: ${_getAddress.currentAddress}';
                  });
                  // Save the retrieved info to Shared Preferences
                  await prefs.setString('gps', gpsCoordinates);
                  await prefs.setString('addr', address);
                },
              ),
              Text(
                '$gpsCoordinates\n$address',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
