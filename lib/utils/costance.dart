import 'package:flutter/material.dart';

class Constants {
  Constants._();
  static Constants instance = Constants._();
  TextStyle kBoldInfo = const TextStyle(
      color: Colors.amber, fontSize: 35, fontWeight: FontWeight.bold);
  BoxDecoration kBackGround = const BoxDecoration(
    // "https://images.unsplash.com/photo-1534274988757-a28bf1a57c17?crop=entropy&cs=srgb&fm=jpg&ixid=Mnw3MjAxN3wwfDF8c2VhcmNofDE5fHx3ZWF0aGVyfGVufDB8fHx8MTYzOTgzMTczMg&ixlib=rb-1.2.1&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450")
    image: DecorationImage(
      image: AssetImage('assets/images/bj.jpg'),
      fit: BoxFit.fitHeight,
    ),
  );
  TextStyle kHeader = const TextStyle(
      color: Colors.white, fontSize: 34, fontWeight: FontWeight.w400);
  TextStyle kIconDownLableUp = const TextStyle(
      fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white);
  TextStyle kIconDownLableDown = const TextStyle(
      fontWeight: FontWeight.w700, fontSize: 20, color: Colors.amber);

  TextStyle IconUpStyle = const TextStyle(fontSize: 30, color: Colors.amber);

  TextStyle kSplashText = const TextStyle(
    fontSize: 25,
    fontFamily: 'FugazOne',
  );
  String url = 'https://api.openweathermap.org/data/2.5/weather';
  String apiKey = '9bbb071dda1a4d958dae4f004cb5f92c';
  String thunderStorem = 'assets/images/weatherCondition/thunderstorm.png';
  String drizzel = 'assets/images/weatherCondition/drizzle.png';
  String rain = 'assets/images/weatherCondition/rain.png';
  String snow = 'assets/images/weatherCondition/snow.png';
  String cloud = 'assets/images/weatherCondition/clouds.png';
  String clearSky = 'assets/images/weatherCondition/sunny.png';
  
}
