// ignore_for_file: file_names

import 'package:amanta/models/wheatherModel.dart';
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
  }

  @override
  void onInit() {
    super.onInit();
    getdata();
  }
}
