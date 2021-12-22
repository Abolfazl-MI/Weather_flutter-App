// ignore_for_file: file_names

import 'package:amanta/widgets/widgets.dart';
import 'package:flutter/material.dart';

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
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.location_pin,
                size: 30,
              ))
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
              const Text('Tehran',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 35,
                      fontWeight: FontWeight.bold)),
              const Icon(
                Icons.cloud_sharp,
                size: 108,
                color: Colors.white,
              ),
              const Text('13°',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 35,
                      fontWeight: FontWeight.bold)),
              Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.09),
                width: width,
                height: height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconUP(
                      titel: '8 km/s',
                      icons: Icons.air_rounded,
                    ),
                    IconUP(
                      icons: Icons.device_thermostat_outlined,
                      titel: "8%",
                    ),
                    IconUP(titel: '25%', icons: Icons.cloud_circle_outlined)
                  ],
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
//! down stream
//                 children: [
//                   IconDown(
//                     icons: Icons.cloud,
//                     color: Colors.white,
//                     lableDown: "13°",
//                     lableUp: "12:00",
//                   ),
//                   IconDown(
//                       icons: Icons.wb_sunny,
//                       color: Colors.yellow,
//                       lableDown: "21°",
//                       lableUp: "13:00"),
//                   IconDown(
//                       icons: Icons.cloud,
//                       color: Colors.white,
//                       lableDown: "15°",
//                       lableUp: "14:00"),
//                   IconDown(
//                       icons: Icons.wb_sunny,
//                       color: Colors.yellow,
//                       lableDown: "30°",
//                       lableUp: "10:00"),
//                 ],
//               ),
//
//
//
// ! up  stream
// Row(
//                 children: [
//                   const SizedBox(
//                     width: 90,
//                   ),
//                   IconUP(
//                     icons: Icons.air_rounded,
//                     titel: "8 km/s",
//                   ),
//
//
//                 ],
//               ),
}
// IconUP(
//      icons: ,
//                     titel: "25%",
//                   )
