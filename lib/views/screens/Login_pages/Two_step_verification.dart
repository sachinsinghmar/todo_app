import 'package:flutter/material.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/images.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/App_buttons.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Security", style: Mystyle.fs22),
        backgroundColor: Mycolor.darkgreen,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Center(child: Image.asset(Myimage.verification)),
            Appservices.giveheight(15),
            Text(
                "For added security, enable two-step verification, which will require a PIN when registering yourphone number with WhatsApp again."),
            Spacer(),
            MYSmallbtn(
              navigator: () {},
              text: "ENABLE",
              bgclr: Mycolor.darkgreen,
              width: 110,
              textStyle: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
