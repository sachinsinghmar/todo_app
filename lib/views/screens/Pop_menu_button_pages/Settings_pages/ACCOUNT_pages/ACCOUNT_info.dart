import 'package:flutter/material.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/images.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/App_buttons.dart';
import 'package:whatshapp/views/components/my_listtile.dart';

class Account_request extends StatelessWidget {
  const Account_request({super.key});

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
        child: Column(children: [
          Center(child: Image.asset(Myimage.request)),
          Appservices.giveheight(20),
          Text.rich(TextSpan(children: [
            TextSpan(
                text:
                    "Create a report of your WhatsApp accountinformation and settings, which you can accessor port to another app. This report does not include your messages.",
                style: Mystyle.fs16),
            TextSpan(text: "Learn More", style: TextStyle(color: Colors.blue))
          ])),
          Appservices.giveheight(10),
          Divider(),
          MY_Listtile(
            leading: Icon(Icons.description),
            title: Text("Request report"),
          ),
          Divider(),
          Spacer(),
          MYSmallbtn(
            navigator: () {},
            text: "Next",
            bgclr: Mycolor.darkgreen,
            width: 110,
            textStyle: Mystyle.fs16.copyWith(color: Colors.white),
          )
        ]),
      ),
    );
  }
}
