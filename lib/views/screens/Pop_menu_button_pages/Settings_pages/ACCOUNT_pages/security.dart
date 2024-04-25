import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/images.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/my_listtile.dart';

class Security extends StatefulWidget {
  const Security({super.key});

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  bool change = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Security", style: Mystyle.fs22),
        backgroundColor: Mycolor.darkgreen,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Center(child: Image.asset(Myimage.security)),
            Appservices.giveheight(20),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text:
                      "WhatsApp secures your conversations withend-to-end encryption. This means youmessages, call and status updates staybetween you and the people you choose. Noteven whatsApp can read or listen to them.",
                  style: Mystyle.fs16),
              TextSpan(text: "Learn More", style: TextStyle(color: Colors.blue))
            ])),
            Appservices.giveheight(20),
            Divider(),
            Appservices.giveheight(20),
            MY_Listtile(
                title: Text("Show security notifications"),
                subtitle: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                          text:
                              "Get notified when your security code changes for contact.",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: " Learn more",
                          style: TextStyle(color: Colors.blue))
                    ])),
                  ],
                ),
                trailing: Switch(
                  activeColor: Mycolor.grey,
                  value: change,
                  onChanged: (value) {
                    setState(() {
                      change = value;
                    });
                  },
                ))
          ],
        ),
      ),
    );
  }
}
