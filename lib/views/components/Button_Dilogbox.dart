import 'package:flutter/material.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/App_buttons.dart';

// ignore: must_be_immutable
class Button_dilog_box extends StatefulWidget {
  String text;
  String? subtitle;
  List<Map<String, dynamic>>? name;
  String lbutton;
  String rbutton;
  TextStyle? stylesubtitle;
  TextStyle? textStyle;
  bool? checker = false;
  Button_dilog_box(
      {super.key,
      this.checker,
      this.stylesubtitle,
      this.subtitle,
      this.textStyle,
      this.name,
      required this.text,
      required this.lbutton,
      required this.rbutton});

  @override
  State<Button_dilog_box> createState() => _Button_dilog_boxState();
}

class _Button_dilog_boxState extends State<Button_dilog_box> {
  bool isselect = false;
  int valuei = 0;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.text,
              style: widget.textStyle,
            ),
            Appservices.giveheight(20),
            widget.subtitle == null
                ? SizedBox()
                : Text(widget.subtitle.toString(), style: widget.stylesubtitle),
            widget.checker == true
                ? Column(children: [
                    ...List.generate(
                      widget.name!.length,
                      (index) => CheckboxListTile(
                          value: widget.name == null
                              ? false
                              : widget.name![index]["value"],
                          onChanged: (newValue) {
                            setState(() {
                              widget.name![index]["value"] = newValue!;
                            });
                          },
                          activeColor: Mycolor.lightgreen,
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text(
                            widget.name == null
                                ? "aaa"
                                : widget.name?[index]["name"],
                            style: Mystyle.fs15,
                          )),
                    )
                  ])
                : SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Appservices.givewidth(10),
                MYSmallbtn(
                  width: Appservices.getscreenwidth(context) * 0.2,
                  navigator: () {},
                  text: widget.lbutton,
                  textStyle: TextStyle(color: Mycolor.lightgreen),
                ),
                MYSmallbtn(
                  width: Appservices.getscreenwidth(context) * 0.2,
                  navigator: () {},
                  text: widget.rbutton,
                  textStyle: TextStyle(color: Mycolor.lightgreen),
                )
              ],
            )
          ]),
    );
  }
}
