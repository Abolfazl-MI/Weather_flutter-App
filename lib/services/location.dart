import 'package:geolocator/geolocator.dart';

class LocationService {
  static Future<Position> getpossient() async {
    bool? isServiceEnable;
    Position? position;
    LocationPermission permission;
    try {
      isServiceEnable = await Geolocator.isLocationServiceEnabled();
      if (!isServiceEnable) {
        throw Exception('location service is not enabled');
      }
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          throw Exception('access denied');
        }
        if (permission == LocationPermission.deniedForever) {
          throw Exception('denied for forever');
        }
      }

      position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      return position;
    } catch (e) {
      throw e;
    } finally {
      return position!;
    }
  }
}
