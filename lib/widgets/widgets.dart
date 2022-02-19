// ignore_for_file: non_constant_identifier_names

import 'package:amanta/utils/costance.dart';
import 'package:flutter/material.dart';

// class IconDown extends StatelessWidget {
//   IconDown(
//       {Key? key,
//       required this.icons,
//       required this.color,
//       required this.lableDown,
//       required this.lableUp})
//       : super(key: key);
//   String? lableUp;
//   String? lableDown;
//   IconData? icons;
//   Color? color;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(lableUp!, style: Constants.instance.kIconDownLableUp),
//         Icon(
//           icons!,
//           size: 30,
//           color: color!,
//         ),
//         Text(lableDown!, style: Constants.instance.kIconDownLableDown),
//       ],
//     );
//   }
// }

// class IconUP extends StatelessWidget {
//   IconUP({Key? key, this.icons, required this.titel}) : super(key: key);
//   IconData? icons;
//   String? titel;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const SizedBox(
//           width: 90,
//         ),
//         Icon(
//           icons!,
//           size: 40,
//           color: Colors.white,
//         ),
//         Text(
//           titel!,
//           style: Constants.instance.IconUpStyle,
//         )
//       ],
//     );
//   }
// }

class Widgets {
  Widgets._();
  static Widgets instance = Widgets._();
  iconUp({IconData? icons, String? titel}) {
    return Column(
      children: [
        const SizedBox(
          width: 90,
        ),
        Icon(
          icons!,
          size: 40,
          color: Colors.white,
        ),
        Text(
          titel!,
          style: Constants.instance.IconUpStyle,
        )
      ],
    );
  }

  iconDown(
      {String? lableUp, String? lableDown, int ? conddition, Color? color}) {
    return Column(
      children: [
        Text(lableUp!, style: Constants.instance.kIconDownLableUp),
        const SizedBox(
          height: 15,
        ),
        SizedBox(width: 60, height: 60, child: iconPlaceHolder(conddition!)),
        const SizedBox(
          height: 15,
        ),
        Text(lableDown!, style: Constants.instance.kIconDownLableDown),
      ],
    );
  }

  iconPlaceHolder(num condition) {
    if (condition == 100 || condition < 100) {
      return const Icon(
        Icons.check_circle,
        color: Colors.green,
        size: 30,
      );
    }
    if (condition > 100 && condition == 200) {
      return Image.asset(
        Constants.instance.clearSky,
        width: 100,
      );
    }
    if (condition > 200 && condition == 300 ||
        condition > 300 && condition < 400) {
      return Image.asset(Constants.instance.drizzel);
    }
    if (condition > 300 && condition == 500 ||
        condition > 500 && condition < 600) {
      return Image.asset(Constants.instance.rain);
    }
    if (condition > 500 && condition == 600 ||
        condition > 600 && condition < 700) {
      return Image.asset(Constants.instance.snow);
    }
    if (condition > 600 && condition == 700 ||
        condition > 700 && condition < 800) {
      return Image.asset(Constants.instance.cloud);
    }
    if (condition > 700 && condition == 800 ||
        condition > 800 && condition < 900) {
      return Image.asset(Constants.instance.clearSky);
    }

    //   if (condition < 100) {
    //     return Icon(Icons.not_interested_sharp);
    //   }
    //   switch (condition) {
    //     case 200.:
    //       return Image.asset(Constants.instance.thunderStorem);
    //     case 300:
    //       return Image.asset(Constants.instance.drizzel);
    //     case 500:
    //       return Image.asset(Constants.instance.rain);
    //     case 600:
    //       return Image.asset(Constants.instance.snow);
    //     case 700:
    //       return Image.asset(Constants.instance.cloud);
    //     case 800:
    //       return Image.asset(Constants.instance.clearSky);
    //     default:
    //       800;
    //   }
    // }
  
  }

  String  dataFormater(int time ){
    var date = new DateTime.fromMicrosecondsSinceEpoch(time * 1000);
    String my_data_To_str = date.toString().split(' ')[1].split('.')[0];
    String final_hour = my_data_To_str.split(':')[0];
    String final_min = my_data_To_str.split(':')[1];
    String final_time = '$final_hour:$final_min';  
    return final_time; 

  }
}
