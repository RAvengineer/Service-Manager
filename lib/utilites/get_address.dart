import 'package:location/location.dart' as loc;

class GetAddress {
  double longitude, latitude;
  bool serviceEnabled;
  loc.Location location = loc.Location();
  loc.LocationData _locationData;

  GetAddress() {
    checkLocationServices();
  }

  Future checkLocationServices() async {
    bool _serviceEnabled;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
    }
    serviceEnabled = _serviceEnabled;
  }

  Future<void> getCurrentLocation() async {
    try {
      _locationData = await location.getLocation();
      longitude = _locationData.longitude;
      latitude = _locationData.latitude;
      print('Location received!');
    } catch (e) {
      print('Error in getCurrentLocation() of Location:\n$e');
    }
  }
}
