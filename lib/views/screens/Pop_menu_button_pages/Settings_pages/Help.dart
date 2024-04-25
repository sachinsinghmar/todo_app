import 'package:flutter/material.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/my_listtile.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> help = [
      {
        "name": "Help Centre",
        "icn": Icon(Icons.help_outline_outlined),
        "sub": ""
      },
      {
        "name": "Contact us",
        "icn": Icon(Icons.people),
        "sub": "Questions? Need help?"
      },
      {
        "name": "Terms and Privacy Policy",
        "icn": Icon(Icons.description_rounded),
        "sub": ""
      },
      {"name": "App info", "icn": Icon(Icons.info_outline), "sub": ""},
    ];
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Mycolor.darkgreen,
          foregroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Settings",
            style: Mystyle.fs22,
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          ...List.generate(
              help.length,
              (index) => MY_Listtile(
                    leading: help[index]["icn"],
                    title: Text(help[index]["name"]),
                    subtitle: Text(help[index]["sub"]),
                  ))
        ]),
      ),
    );
  }
}
