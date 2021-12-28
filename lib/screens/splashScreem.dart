// ignore_for_file: file_names
import 'package:amanta/controller/weathrComtroller.dart';
import 'package:amanta/utils/costance.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  WeatherController controller = Get.put(WeatherController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Lottie.asset(
            'assets/lotties/weather.json',
          )),
          Text('Amata weather', style: kSplashText)
        ],
      ),
    );
  }
}
