import 'package:flutter/material.dart';
import 'package:service_manager/utilites/get_address.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                color: Colors.lightGreenAccent,
                child: Text("Get Location and Address"),
                onPressed: () async {
                  await _getAddress.checkLocationServices();
                  if (!_getAddress.serviceEnabled) Navigator.maybePop(context);
                  await _getAddress.getCurrentAddress();
                  setState(() {
                    gpsCoordinates =
                        'GPS Coordinates: ${_getAddress.latitude} N, ${_getAddress.longitude} E ';
                    address = 'Address: ${_getAddress.currentAddress}';
                  });
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
