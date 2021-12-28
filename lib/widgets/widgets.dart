import 'package:amanta/utils/costance.dart';
import 'package:flutter/material.dart';

class IconDown extends StatelessWidget {
  IconDown(
      {Key? key,
      required this.icons,
      required this.color,
      required this.lableDown,
      required this.lableUp})
      : super(key: key);
  String? lableUp;
  String? lableDown;
  IconData? icons;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(lableUp!, style: kIconDownLableUp),
        Icon(
          icons!,
          size: 30,
          color: color!,
        ),
        Text(lableDown!, style: kIconDownLableDown),
      ],
    );
  }
}

class IconUP extends StatelessWidget {
  IconUP({Key? key, this.icons, required this.titel}) : super(key: key);
  IconData? icons;
  String? titel;
  @override
  Widget build(BuildContext context) {
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
          style: IconUpStyle,
        )
      ],
    );
  }
}
