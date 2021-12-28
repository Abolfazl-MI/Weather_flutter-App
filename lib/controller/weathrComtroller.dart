// ignore_for_file: file_names

import 'dart:async';

import 'package:amanta/models/wheatherModel.dart';
import 'package:amanta/screens/homeScreen.dart';
import 'package:amanta/services/location.dart';
import 'package:amanta/services/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class WeatherController extends GetxController {
  var currentWeather = WheatherModel().obs;
  ApiServices apiServices = ApiServices();
  getdata() async {
    Position currentPossion = await LocationService.getpossient();
    var weatherData = await apiServices.fetchData(currentPossion);
    currentWeather.value = WheatherModel.fromJson(weatherData.data);
    update();
    Get.to(const Homepage(), transition: Transition.cupertino);
  }

  @override
  void onInit() {
    super.onInit();
    getdata();
  }
}
