import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:whatshapp/views/components/App_buttons.dart';
import 'package:whatshapp/views/screens/ALL_home/login.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Welcome to WhatsApp",
                style: Mystyle.fs24,
              ),
            ),
            Appservices.giveheight(40),
            Image.asset("assets/images/whatshappicon.png"),
            Appservices.giveheight(25),
            Text.rich(
                textAlign: TextAlign.center,
                TextSpan(children: [
                  const TextSpan(text: "Read our", style: Mystyle.fs16),
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          ;
                        },
                      text: "Privacy Policy.",
                      style: Mystyle.fs16.copyWith(color: Colors.blue)),
                  const TextSpan(
                      text: " Tap “Agree and continue” to accept the",
                      style: Mystyle.fs16),
                  TextSpan(
                      text: "Teams of Service.",
                      style: Mystyle.fs16.copyWith(color: Colors.blue))
                ])),
            Appservices.giveheight(30),
            SizedBox(
                width: Appservices.getscreenwidth(context) * 0.9,
                child: Normal_button(
                    text: "AGREE AND CONTINUE",
                    clr: Mycolor.green,
                    textcolr: Colors.black,
                    function: () {
                      Appservices.pushscreen(context, Login());
                    })),
            Appservices.giveheight(30),
            const Text("from", style: Mystyle.fs18),
            const Text(
              "FACEBOOK",
              style: Mystyle.fs20,
            )
          ],
        ),
      ),
    ));
  }
}
