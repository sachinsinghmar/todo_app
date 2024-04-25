import 'package:flutter/material.dart';

class Appservices {
  static pushscreen(BuildContext context, Widget screen) =>
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => screen,
      ));
  static goback(BuildContext context) => Navigator.of(context).pop();

  static pushandreplace(BuildContext context, Widget screen) =>
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => screen));
  static pushandremoveuntil(BuildContext context, Widget screen) =>
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => screen), (route) => false);

  static giveheight(double height) => SizedBox(
        height: height,
      );
  static givewidth(double width) => SizedBox(
        width: width,
      );

  static getscreenwidth(context) => MediaQuery.of(context).size.width;
  static getscreenheight(context) => MediaQuery.of(context).size.height;
}
