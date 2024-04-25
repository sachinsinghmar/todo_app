import 'package:flutter/material.dart';
import 'package:whatshapp/services/app_colors.dart';

// ignore: must_be_immutable
class Switcher_listtile extends StatefulWidget {
  Widget? leading;
  Widget? title;
  Widget? trailing;
  Widget? subtitle;

  Switcher_listtile(
      {super.key, this.leading, this.subtitle, this.title, this.trailing});

  @override
  State<Switcher_listtile> createState() => _Switcher_listtileState();
}

class _Switcher_listtileState extends State<Switcher_listtile> {
  bool change = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(),
      title: widget.title,
      trailing: Switch(
        value: change,
        activeColor: Mycolor.darkgreen,
        activeTrackColor: Mycolor.lightgreen,
        onChanged: (value) {
          setState(() {
            change = value;
          });
        },
      ),
    );
  }
}
