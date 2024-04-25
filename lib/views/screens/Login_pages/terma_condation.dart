import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatshapp/views/screens/Login_pages/welcome.dart';

import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/images.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';

class Terma_condation extends StatefulWidget {
  const Terma_condation({super.key});

  @override
  State<Terma_condation> createState() => Terma_condationStateState();
}

class Terma_condationStateState extends State<Terma_condation> {
  bool loading = false;

  latedata() {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        loading = true;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    latedata();
    screen();
  }

  screen() async {
    Future.delayed(const Duration(seconds: 5), () {
      Appservices.pushscreen(context, const Welcome());
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(Myimage.backgroundsplash,
              fit: BoxFit.cover,
              height: Appservices.getscreenheight(context),
              width: Appservices.getscreenwidth(context)),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff0CCC83),
                      borderRadius: BorderRadius.circular(20)),
                  height: 100,
                  width: 100,
                  child: Image.asset(Myimage.whatshapp, scale: 1.5),
                ),
                Appservices.giveheight(10),
                const Text(
                  "WhatsApp",
                  style: Mystyle.fs24,
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                loading
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircularProgressIndicator(
                            color: Mycolor.green,
                            backgroundColor: Color.fromARGB(255, 161, 242, 211),
                          ),
                          Appservices.giveheight(8),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Loading...",
                              style:
                                  Mystyle.fs24.copyWith(color: Mycolor.green),
                            ),
                          )
                        ],
                      )
                    : const Column(
                        children: [
                          Text("from", style: Mystyle.fs18),
                          Text(
                            "FACEBOOK",
                            style: Mystyle.fs20,
                          )
                        ],
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}
