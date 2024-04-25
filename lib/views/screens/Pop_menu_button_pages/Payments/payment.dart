import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/images.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';

import 'package:whatshapp/views/components/my_listtile.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Payments/final_payment.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Mycolor.darkgreen,
          foregroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Payments",
            style: Mystyle.fs22,
          )),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "History",
            style: Mystyle.fs17.copyWith(color: Mycolor.darkgreen),
          ),
        ),
        Appservices.giveheight(10.h),
        Center(child: Image.asset(Myimage.script)),
        Appservices.giveheight(8.h),
        Center(
          child: Text(
            "No payment history",
            style: Mystyle.fs16,
          ),
        ),
        Appservices.giveheight(15),
        Divider(
          thickness: 12,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Payment method",
            style: Mystyle.fs17.copyWith(color: Mycolor.darkgreen),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(9.0),
          child: Row(
            children: [
              Image.asset(Myimage.paymentmethod),
              Appservices.givewidth(15),
              Expanded(
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text:
                          "To protect your security. WhatsApp does not store your upi pin or full bank account number.",
                      style: Mystyle.fs16),
                  TextSpan(
                      text: "Learn more.",
                      style: Mystyle.fs16.copyWith(color: Colors.blue))
                ])),
              )
            ],
          ),
        ),
        MY_Listtile(
          leading: Icon(
            Icons.add_circle_outline_outlined,
            color: Mycolor.darkgreen,
          ),
          title: Text("Add payment method"),
        ),
        Divider(
          thickness: 12,
        ),
        MY_Listtile(
          leading: Icon(
            Icons.help_outline_outlined,
            color: Mycolor.darkgreen,
          ),
          title: Text("Help", style: Mystyle.fs20),
        ),
        Appservices.giveheight(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset(Myimage.bhim), Image.asset(Myimage.upi)],
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              height: 40.h,
              width: 170.w,
              child: TextButton(
                onPressed: () {
                  Appservices.pushscreen(context, Final_payment());
                },
                child: Row(
                  children: [
                    Image.asset(Myimage.rupee),
                    Appservices.givewidth(8),
                    Text("NEW PAYMENT", style: TextStyle(color: Colors.white)),
                  ],
                ),
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                    backgroundColor:
                        MaterialStatePropertyAll(Mycolor.darkgreen)),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
