// ignore_for_file: file_names
import 'dart:developer';

import 'package:amanta/models/wheatherModel.dart';
import 'package:amanta/services/location.dart';
import 'package:amanta/services/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class WeatherController extends GetxController {
  var currentWeather = WheatherModel().obs;
  ApiServices apiServices = ApiServices();
  getdata() async {
    print('initilizing ');
    Position currentPossion = await LocationService.getpossient();
    var data = await apiServices.fetchData(currentPossion);
    currentWeather.value = WheatherModel.fromJson(data.data);
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getdata();
  }
}
