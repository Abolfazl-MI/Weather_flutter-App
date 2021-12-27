// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
          const Text(
            'Amata weather',
            style: TextStyle(
                fontSize: 25,
                fontFamily: 'FugazOne',
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
