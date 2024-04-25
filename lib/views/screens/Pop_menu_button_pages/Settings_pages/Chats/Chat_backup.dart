import 'package:flutter/material.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/App_buttons.dart';
import 'package:whatshapp/views/components/my_listtile.dart';
import 'package:whatshapp/views/components/switcher_listtile.dart';

class Chat_backup extends StatelessWidget {
  const Chat_backup({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> list = [
      {"title": "Back up to Google Drive", "Subtitle": "Never"},
      {"title": "Google Account", "Subtitle": "None selected"},
      {"title": "Back up over", "Subtitle": "Wi-Fi only"}
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Mycolor.darkgreen,
        foregroundColor: Colors.white,
        title: Text("Chats backup", style: Mystyle.fs22),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.backup, color: Mycolor.grey, size: 30),
              Appservices.givewidth(25),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Last Backup",
                      style: Mystyle.fs15.copyWith(color: Mycolor.grey),
                    ),
                    Appservices.giveheight(20),
                    Text(
                      "Back up your messages and media to Google Drive. You can restore them when you reinstall WhatsApp. Your messages will also back up to your phone’s internal storage.",
                      style: TextStyle(color: Mycolor.grey),
                    ),
                    Appservices.giveheight(20),
                    Text("Local: 2:00 am"),
                    Appservices.giveheight(7),
                    Text("Google Drive: Never"),
                    Appservices.giveheight(20),
                    MYSmallbtn(
                      navigator: () {},
                      text: "BACK UP",
                      width: 100,
                      radiuss: 5,
                      bgclr: Mycolor.darkgreen,
                      textStyle: Mystyle.fs16.copyWith(color: Mycolor.black),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Divider(
          color: Mycolor.divider,
          thickness: 2,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.add_to_drive_sharp,
                color: Mycolor.grey,
                size: 30,
              ),
              Appservices.givewidth(25),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Google Drive settings",
                        style: TextStyle(color: Mycolor.grey)),
                    Appservices.giveheight(20),
                    Text(
                      "Messages and media backed up in GoogleDrive are not protected by WhatsApp end-to-endencryption.",
                      style: TextStyle(color: Mycolor.grey),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        ...List.generate(
            list.length,
            (index) => MY_Listtile(
                  leading: SizedBox(),
                  title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(list[index]["title"], style: Mystyle.fs16),
                        Appservices.giveheight(4),
                        Text(
                          list[index]["Subtitle"],
                          style: TextStyle(color: Mycolor.grey),
                        )
                      ]),
                )),
        Switcher_listtile(
          leading: SizedBox(),
          title: Text("Include videos"),
        )
      ]),
    );
  }
}
