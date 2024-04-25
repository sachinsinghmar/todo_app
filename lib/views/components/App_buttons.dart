import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';

// ignore: must_be_immutable
class Normal_button extends StatelessWidget {
  String text;
  Color? clr;
  Function function;
  Color? textcolr;
  Normal_button(
      {super.key,
      required this.text,
      required this.function,
      this.clr,
      this.textcolr});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Text(text, style: Mystyle.fs18.copyWith(color: textcolr)),
      onPressed: () => function(),
      color: clr,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    );
  }
}

// ignore: must_be_immutable
class Small_button extends StatelessWidget {
  String text;
  Function fun;
  Color? clor;
  Color? textclor;
  Small_button(
      {super.key,
      required this.fun,
      required this.text,
      this.clor,
      this.textclor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Mycolor.green),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))))),
        onPressed: () => fun(),
        child: Text(
          text,
          style: Mystyle.fs18.copyWith(color: Colors.black),
        ));
  }
}

// ignore: must_be_immutable
class Round_button extends StatelessWidget {
  String text;
  Function fun;
  Color? clor;
  Color? textclor;
  Round_button(
      {super.key,
      required this.text,
      required this.fun,
      this.clor,
      this.textclor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(clor),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))))),
        onPressed: () => fun(),
        child: Text(
          text,
          style: Mystyle.fs18.copyWith(color: textclor),
        ));
  }
}

// ignore: must_be_immutable
class MYSmallbtn extends StatelessWidget {
  String text;
  Color? bgclr;
  Function navigator;
  TextStyle? textStyle;
  double radiuss;
  double? width;

  MYSmallbtn(
      {super.key,
      this.bgclr,
      required this.navigator,
      required this.text,
      this.textStyle,
      this.radiuss = 0,
      this.width});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radiuss)),
          minimumSize: Size(
              width == null
                  ? Appservices.getscreenwidth(context)
                  : width as double,
              40),
          backgroundColor: bgclr),
      onPressed: () => navigator(),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
