// ignore_for_file: file_names
import 'dart:ui';

import 'package:amanta/controller/weathrComtroller.dart';
import 'package:amanta/utils/costance.dart';
import 'package:amanta/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtherScreen extends StatelessWidget {
  OtherScreen({Key? key}) : super(key: key);
  var controller = Get.find<WeatherController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Time Temps'),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: Constants.instance.kBackGround,
        child: GetBuilder<WeatherController>(
          init: WeatherController(),
          builder: (controller) => ListView.builder(
            shrinkWrap: false,
            itemCount: controller.hWheather.value.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 90,
                child: Card(
                  color: Colors.black45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 45,
                        height: 85,
                        child: Widgets.instance.iconPlaceHolder(
                            controller.hWheather.value[index].hCondtion!),
                      ),
                      Text(Widgets.instance.dataFormater(
                          controller.hWheather.value[index].hTime!)),
                      Text(controller.hWheather.value[index].hTemp.toString() +
                          '°'),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
