// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
// import 'package:weather_icons/weather_icons.dart';
// import 'package:simple_icons/simple_icons.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:ionicons/ionicons.dart';
// import 'package:icon/icon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Opacity(
        opacity: 0.9,
        child: Container(
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1534274988757-a28bf1a57c17?crop=entropy&cs=srgb&fm=jpg&ixid=Mnw3MjAxN3wwfDF8c2VhcmNofDE5fHx3ZWF0aGVyfGVufDB8fHx8MTYzOTgzMTczMg&ixlib=rb-1.2.1&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Positioned(
                child: AppBar(
                  title: Text("Weather",style: TextStyle(fontSize: 30),),
                  centerTitle: true,
                  backgroundColor: Colors.transparent,
                  elevation: 10,
                  leading: Icon(Icons.menu,size: 30,),
                  actions: [
                    IconButton(onPressed: (){},
                     icon: Icon(Icons.location_pin,size:40,))
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                        child: Text(
                      "Theran",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 40,
                          fontWeight: FontWeight.w700),
                    )),
                  ),
                  Icon(
                    Icons.cloud,
                    color: Colors.white,
                    size: 100,
                  ),
                  Center(
                      child: Text(
                    "12°",
                    style: TextStyle(fontSize: 60),
                  ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(width: 90,),
                  IconUP(icons:Icons.air_rounded,titel: "8 km/s",) , 
                  IconUP(icons:Icons. device_thermostat_outlined,titel: "8%",),
                  IconUP(icons:Icons. cloud_circle_outlined,titel: "25%",)
                ],
              ),
              SizedBox(
                height: 250,
              ),
              Row(
                children: [
                  IconDown(icons: Icons.cloud,color: Colors.white,lableDown: "13°",lableUp:"12:00" ,),
                  IconDown(icons:Icons.wb_sunny,color: Colors.yellow,lableDown: "21°",lableUp:"13:00"),
                  IconDown(icons: Icons.cloud,color: Colors.white,lableDown: "15°",lableUp:"14:00"),
                  IconDown(icons:Icons.wb_sunny,color: Colors.yellow,lableDown: "30°",lableUp:"10:00"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconDown extends StatelessWidget {
  IconDown({required this.icons,required this.color,required this.lableDown,required this.lableUp});
  String? lableUp;
 String? lableDown;
 IconData? icons;
 Color? color;
  @override
  Widget build(BuildContext context) {
    return Column(
   
      children: [
        SizedBox(
          width: 100,
        ),
        Text(
          lableUp!,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        Icon(
          icons!,
          size: 50,
          color: color!,
        ),
        Text(
          lableDown!,
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 30, color: Colors.black),
        ),
      ],
    );
  }
}

class IconUP extends StatelessWidget {
  
  IconUP({this.icons,required this.titel});
IconData? icons;
String? titel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(width: 90,),
        Icon(
          icons!,
          size: 40,
        ),
        Text(
          titel!,
          style: TextStyle(fontSize: 30),
        )
      ],
    );
  }
}
