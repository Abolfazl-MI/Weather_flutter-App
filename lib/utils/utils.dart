import 'dart:developer';

import 'package:connectivity/connectivity.dart';

enum connectivity { mobile, wifi, none }

class Utils {
  static Future<bool> checkInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else if (connectivityResult == ConnectivityResult.none) {
      log('noInternet');
      return false;
    }
    return false;
  }
}
