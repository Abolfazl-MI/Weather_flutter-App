import 'package:amanta/screens/splashScreem.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/homeScreen.dart';

// TODO controller impelement
// TODO pass data to server
// TODO notification implemention
//! FIXME  have issue in json parsing Fix that
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  //Im Arshia
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SplashScreen(),
    );
  }
}
