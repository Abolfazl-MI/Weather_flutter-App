import 'dart:developer';

import 'package:amanta/controller/weathrComtroller.dart';
import 'package:amanta/models/currentWeather_modle.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

  static errorHandler({
    required String error,
  }) {
    var controller = Get.find<WeatherController>();
    log(error);
    if (error == 'Location service is not enable') {
      Get.defaultDialog(
          title: 'Location Service Error',
          content:
              const Text('Please enable location service to use this feature'),
          onConfirm: () => controller.getdata());
    }
    if (error == 'Location permission is not granted') {
      Get.defaultDialog(
          title: 'Location Permission Error',
          content: const Text(
              'Please grant location permission to use this feature'),
          onConfirm: () => controller.getdata());
    }
    if (error == 'No Internet') {
      Get.defaultDialog(
          title: 'No InterNet Connection',
          content: const Text('Please enable Internet '),
          onConfirm: () => controller.getdata());
    }
  }
}
