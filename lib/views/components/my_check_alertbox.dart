import 'package:flutter/material.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/App_buttons.dart';

// ignore: must_be_immutable
class Check_alertbox extends StatelessWidget {
  List<String> text;

  String heading;
  Check_alertbox({super.key, required this.text, required this.heading});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(heading),
        ...List.generate(
            text.length,
            (index) => CheckboxListTile(
                  value: false,
                  onChanged: (value) {},
                  title: Text(text[index]),
                  controlAffinity: ListTileControlAffinity.leading,
                )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            MYSmallbtn(
              navigator: () {},
              text: "CANCLE",
              width: Appservices.getscreenwidth(context) * 0.2,
              textStyle: Mystyle.fs16.copyWith(color: Mycolor.darkgreen),
            ),
            MYSmallbtn(
              navigator: () {},
              text: "OK",
              width: Appservices.getscreenwidth(context) * 0.2,
              textStyle: Mystyle.fs16.copyWith(color: Mycolor.darkgreen),
            )
          ],
        )
      ]),
    );
  }
}
