// ignore_for_file: file_names

import 'package:amanta/controller/weathrComtroller.dart';
import 'package:amanta/models/wheatherModel.dart';
import 'package:amanta/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 30,
            )),
        actions: [
          GetBuilder<WeatherController>(
            init: WeatherController(),
            builder: (_) => IconButton(
                onPressed: () async {
                  await Share.share(
                    'hello Iam from ${_.currentWeather.value.cityName} and our town tempreture is ${_.currentWeather.value.tempreture} If you want more install Amata Weathers ',
                    subject: 'my weather',
                  );
                },
                icon: const Icon(
                  CupertinoIcons.location_fill,
                  size: 30,
                )),
          )
        ],
        title: const Text(
          'Weather',
          style: TextStyle(
              color: Colors.white, fontSize: 34, fontWeight: FontWeight.w400),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          // "https://images.unsplash.com/photo-1534274988757-a28bf1a57c17?crop=entropy&cs=srgb&fm=jpg&ixid=Mnw3MjAxN3wwfDF8c2VhcmNofDE5fHx3ZWF0aGVyfGVufDB8fHx8MTYzOTgzMTczMg&ixlib=rb-1.2.1&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450")
          image: DecorationImage(
            image: AssetImage('assets/images/bj.jpg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Container(
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GetBuilder<WeatherController>(
                init: WeatherController(),
                builder: (_) => Text(_.currentWeather.value.cityName!,
                    style: const TextStyle(
                        color: Colors.amber,
                        fontSize: 35,
                        fontWeight: FontWeight.bold)),
              ),
              const Icon(
                Icons.cloud_sharp,
                size: 108,
                color: Colors.white,
              ),
              GetBuilder<WeatherController>(
                  init: WeatherController(),
                  builder: (_) => Text('${_.currentWeather.value.tempreture}°',
                      style: const TextStyle(
                          color: Colors.amber,
                          fontSize: 35,
                          fontWeight: FontWeight.bold))),
              Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.09),
                width: width,
                height: height * 0.1,
                child: GetBuilder<WeatherController>(
                  init: WeatherController(),
                  builder: (_) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconUP(
                        titel: '${_.currentWeather.value.windSpeed} km/s',
                        icons: Icons.air_rounded,
                      ),
                      IconUP(
                        icons: Icons.device_thermostat_outlined,
                        titel: "${_.currentWeather.value.humedity}%",
                      ),
                      IconUP(titel: '25%', icons: Icons.cloud_circle_outlined)
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.04),
                width: width,
                height: height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconDown(
                      icons: Icons.cloud,
                      color: Colors.white,
                      lableDown: "13°",
                      lableUp: "12:00",
                    ),
                    IconDown(
                        icons: Icons.wb_sunny,
                        color: Colors.yellow,
                        lableDown: "21°",
                        lableUp: "13:00"),
                    IconDown(
                        icons: Icons.cloud,
                        color: Colors.white,
                        lableDown: "15°",
                        lableUp: "14:00"),
                    IconDown(
                        icons: Icons.wb_sunny,
                        color: Colors.yellow,
                        lableDown: "30°",
                        lableUp: "10:00"),

                    //
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // iconner({double? condition}) {
  //   if (condition! > 0 && condition < 20) {
  //     return
  //   }
  // }
//  String getWeatherIcon(int condition) {
//     if (condition < 300) {
//       return '🌩';
//     } else if (condition < 400) {
//       return '🌧';
//     } else if (condition < 600) {
//       return '☔️';
//     } else if (condition < 700) {
//       return '☃️';
//     } else if (condition < 800) {
//       return '🌫';
//     } else if (condition == 800) {
//       return '☀️';
//     } else if (condition <= 804) {
//       return '☁️';
//     } else {
//       return '🤷‍';
//     }
//   }
}
