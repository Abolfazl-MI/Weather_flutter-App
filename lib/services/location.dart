import 'package:geolocator/geolocator.dart';

class LocationService {
  static Future<Position> getpossient() async {
    bool? isServiceEnable;
    Position? position;
    LocationPermission permission;
    try {
      isServiceEnable = await Geolocator.isLocationServiceEnabled();
      if (!isServiceEnable) {
        return Future.error('Location service is not enable');
      }
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Location permission is not granted');
        }
        if (permission == LocationPermission.deniedForever) {
          return Future.error('Location permission is not granted');
        }
      }

      position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      return position;
    } catch (e) {
      throw e;
    } finally {
      return position!;
    }
  }
}
