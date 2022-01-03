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
    log('start getData: ');
    hasNetwork = await Utils.checkInternetConnection();
    log(hasNetwork.toString());
    if (hasNetwork) {
      log('now networking ');
      Position currentPossion = await LocationService.getpossient();
      var weatherData = await apiServices.fetchData(currentPossion);
      currentWeather.value = WheatherModel.fromJson(weatherData.data);
      Get.to(const Homepage(), transition: Transition.cupertino);
      update();
    }
    if (hasNetwork == false) {
      Get.defaultDialog(
        title: 'there is no internet Connection !',
        barrierDismissible: false,
        content: const Text('enable network'),

        onConfirm: () {
          log('recalling get data ...');
          getdata();
        },
        // onConfirm: () {
        //REVIEW implemint  wifi enable button
        // });
      );
    }
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
