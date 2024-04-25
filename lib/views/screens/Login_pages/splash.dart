import 'package:flutter/material.dart';
import 'package:whatshapp/function/All_function.dart';
import 'package:whatshapp/views/screens/Login_pages/terma_condation.dart';
import 'package:whatshapp/services/images.dart';
import 'package:whatshapp/services/routes.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    screen();
  }

  screen() async {
    await All_Function.Alldata(
      context,
    );
    await All_Function.getChats(context);
    await All_Function.getwallpaper(context).toString();
    Future.delayed(Duration(seconds: 2), () {
      Appservices.pushscreen(context, Terma_condation());
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Stack(alignment: Alignment.center, children: [
          Image.asset(Myimage.backgroundsplash,
              fit: BoxFit.cover,
              height: Appservices.getscreenheight(context),
              width: Appservices.getscreenwidth(context)),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff0CCC83),
                  borderRadius: BorderRadius.circular(40)),
              height: 160,
              width: 160,
              child: Image.asset(Myimage.whatshapp),
            ),
          ),
        ]),
      ]),
    );
  }
}
