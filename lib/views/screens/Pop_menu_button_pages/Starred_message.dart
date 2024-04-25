import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';

class Starred_messages extends StatelessWidget {
  const Starred_messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Mycolor.darkgreen,
          foregroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Starred messages",
            style: Mystyle.fs22,
          )),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Container(
            height: 180.sp,
            width: 180.sp,
            child: Icon(
              Icons.star,
              color: Colors.white,
              size: 100,
            ),
            decoration:
                BoxDecoration(color: Mycolor.darkgreen, shape: BoxShape.circle),
          ),
        ),
        Appservices.giveheight(10),
        Text(
          textAlign: TextAlign.center,
          "Tap and hold on any message\n in any chat to star it, so you\n can easily find it later.",
          style: Mystyle.fs16,
        )
      ]),
    );
  }
}
