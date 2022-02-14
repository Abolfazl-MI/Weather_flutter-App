// ignore_for_file: file_names

import 'dart:developer';

import 'package:amanta/models/wheatherModel.dart';
import 'package:amanta/screens/homeScreen.dart';

import 'package:amanta/services/location.dart';

import 'package:amanta/services/services.dart';
import 'package:amanta/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'package:get/get.dart';

class WeatherController extends GetxController {
  var currentWeather = WheatherModel().obs;
  bool hasNetwork = false;
  //REVIEW implement gps service is enable || disable
  ApiServices apiServices = ApiServices();
  getdata() async {
    log('******start getData*******');
    hasNetwork = await Utils.checkInternetConnection();
    log(hasNetwork.toString());
    if (hasNetwork) {
      log('****now networking******* ');
      try {
        Position currentPossion = await LocationService.getpossient();
        log(currentPossion.latitude.toString());
        log(currentPossion.longitude.toString());

        var weatherData = await apiServices.fetchData(currentPossion);
        currentWeather.value = WheatherModel.fromJson(weatherData.data);
        // log(currentWeather.value.condition.toString());
        Get.to(const Homepage(), transition: Transition.cupertino);

        update();
      } catch (e) {
        
        Utils.errorHandler(
          error: e.toString(),
        );
      }
    }
    if (hasNetwork == false) Utils.errorHandler(error: 'No Internet');
  }

  @override
  void onInit() {
    super.onInit();
    getdata();
  }

/* Position currentPossion = await LocationService.getpossient();
    var weatherData = await apiServices.fetchData(currentPossion);
    currentWeather.value = WheatherModel.fromJson(weatherData.data);
    update();
    Get.to(const Homepage(), transition: Transition.cupertino);*/
  /* 
     Position currentPossion = await LocationService.getpossient();
        var weatherData = await apiServices.fetchData(currentPossion);
        currentWeather.value = WheatherModel.fromJson(weatherData.data);
        update();
        Get.to(const Homepage(), transition: Transition.cupertino);
    */
}
