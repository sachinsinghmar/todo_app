import 'package:flutter/material.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:whatshapp/views/components/App_buttons.dart';
import 'package:whatshapp/views/screens/ALL_home/home.dart';

import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';

// ignore: must_be_immutable
class Otp extends StatefulWidget {
  String otp;
  Otp({super.key, required this.otp});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  TextEditingController otpcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text(
            "Enter OTP Code",
            style: Mystyle.fs22,
          )),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Appservices.giveheight(.1.sh),
            Text("Code has been send to +91 11******44", style: Mystyle.fs16),
            Appservices.giveheight(60),
            PinCodeTextField(
              controller: otpcontroller,
              keyboardType: TextInputType.number,
              appContext: context,
              length: 4,
              pinTheme: PinTheme(
                  fieldHeight: 50,
                  fieldWidth: 60,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  activeColor: Colors.black,
                  inactiveColor: Colors.black,
                  selectedFillColor: Colors.white,
                  selectedColor: Colors.black,
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.white),
            ),
            Appservices.giveheight(60.h),
            Text("Resend Code in 56 s"),
            Spacer(),
            SizedBox(
              height: 40,
              width: Appservices.getscreenwidth(context),
              child: Round_button(
                text: "verfication",
                fun: () {
                  final data = widget.otp == otpcontroller.text;
                  if (data) {
                    Appservices.pushscreen(context, Home());
                  } else {
                    Flushbar(
                        flushbarPosition: FlushbarPosition.TOP,
                        backgroundColor: const Color.fromARGB(154, 3, 3, 3),
                        dismissDirection: FlushbarDismissDirection.VERTICAL,
                        duration: const Duration(seconds: 4),
                        margin: const EdgeInsets.all(10),
                        borderRadius: BorderRadius.circular(20),
                        messageText: Text(
                          "wrong password",
                          style: const TextStyle(
                              fontSize: 25, color: Colors.white),
                        )).show(context);
                  }
                },
                clor: Colors.black,
                textclor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
