import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/images.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/App_buttons.dart';

class QR_code extends StatelessWidget {
  const QR_code({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC4C4C4),
      appBar: AppBar(
        backgroundColor: Mycolor.darkgreen,
        foregroundColor: Colors.white,
        title: Text("Scan QR code"),
      ),
      body: Column(children: [
        Appservices.giveheight(20),
        Text(
            textAlign: TextAlign.center,
            "To use WhatsApp web, go to web.whatsapp.com on your computer.",
            style: Mystyle.fs20.copyWith(color: Color(0xff867373))),
        Appservices.giveheight(20),
        Expanded(
          child: Container(
            width: Appservices.getscreenwidth(context),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                padding: EdgeInsets.all(10.sp),
                height: 300.sp,
                width: 300.sp,
                decoration: BoxDecoration(color: Mycolor.brownlight),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(Myimage.qr),
                    MYSmallbtn(
                      navigator: () {},
                      text: "OK",
                      bgclr: Mycolor.darkgreen,
                      radiuss: 5,
                      textStyle: Mystyle.fs18.copyWith(color: Colors.white),
                    )
                  ],
                ),
              )
            ]),
            decoration: BoxDecoration(color: Colors.white),
          ),
        )
      ]),
    );
  }
}
