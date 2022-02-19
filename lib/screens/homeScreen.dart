// ignore_for_file: file_names

import 'package:amanta/controller/weathrComtroller.dart';
import 'package:amanta/screens/otherScreen.dart';

import 'package:amanta/utils/costance.dart';
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
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
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
      ),
      //
      body: Container(
        decoration: Constants.instance.kBackGround,
        child: Container(
          width: width,
          child: GetBuilder<WeatherController>(
            init: WeatherController(),
            builder: (controller) => Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(controller.currentWeather.value.cityName!,
                    style: Constants.instance.kBoldInfo),

                Container(
                  width: width,
                  height: height * 0.2,
                  child: Widgets.instance.iconPlaceHolder(
                      controller.currentWeather.value.condition ?? 800),
                ),

                Text('${controller.currentWeather.value.tempreture}°',
                    style: Constants.instance.kBoldInfo),
                Text('${controller.currentWeather.value.desCribtion}',
                    style: Constants.instance.kBoldInfo),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * 0.09),
                  width: width,
                  height: height * 0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Widgets.instance.iconUp(
                        titel:
                            '${controller.currentWeather.value.windSpeed} km/s',
                        icons: Icons.air_rounded,
                      ),
                      Widgets.instance.iconUp(
                        icons: Icons.device_thermostat_outlined,
                        titel: "${controller.currentWeather.value.humedity}%",
                      ),
                      
                    ],
                  ),
                ),

                TextButton(
                    onPressed: () {
                      Get.to(OtherScreen(), transition: Transition.cupertino);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'See about other hoours',
                          style: Constants.instance.kIconDownLableDown,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        )
                      ],
                    )),

                const SizedBox(
                  height: 1,
                )

                // )
              ],
            ),
          ),
        ),
      ),
    );
  }

// TODO ! import ant amke next update to give time and city from user and show the result in the app

}
