import 'package:flutter/material.dart';

import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/views/components/App_buttons.dart';

// ignore: must_be_immutable
class Alert_box extends StatefulWidget {
  List<Map<String, dynamic>> name;
  bool button = false;

  Alert_box({
    super.key,
    required this.name,
    required this.button,
  });

  @override
  State<Alert_box> createState() => _Alert_boxState();
}

class _Alert_boxState extends State<Alert_box> {
  int? choose = 0;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text('Choose Theme'),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ...List.generate(
              widget.name.length,
              (index) => RadioListTile(
                value: widget.name[index]["value"],
                title: Text(widget.name[index]["name"]),
                groupValue: choose,
                activeColor: Mycolor.darkgreen,
                onChanged: (number) {
                  setState(() {
                    choose = number;
                  });
                },
              ),
            ),
          ],
        ),
        actionsAlignment: MainAxisAlignment.end,
        actionsPadding: EdgeInsets.only(left: 10.0),
        actions: [
          widget.button == true
              ? Row(
                  children: [
                    SizedBox(
                      width: Appservices.getscreenwidth(context) * 0.25,
                    ),
                    MYSmallbtn(
                      width: Appservices.getscreenwidth(context) * 0.2,
                      navigator: () {
                        Appservices.goback(context);
                      },
                      text: "CANCEL",
                      textStyle: TextStyle(color: Mycolor.lightgreen),
                    ),
                    MYSmallbtn(
                      navigator: () {},
                      text: "OK",
                      width: Appservices.getscreenwidth(context) * 0.3,
                      textStyle: TextStyle(color: Mycolor.lightgreen),
                    )
                  ],
                )
              : SizedBox()
        ]);
  }
}
