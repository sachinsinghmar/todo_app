import 'package:flutter/material.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/images.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/my_listtile.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Settings_pages/Account.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Settings_pages/Chats/Chats.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Settings_pages/Help.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Settings_pages/Notifications/notification.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Settings_pages/Storage/Storage.dart';

import 'package:whatshapp/views/screens/Pop_menu_button_pages/Settings_pages/profile.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Mycolor.darkgreen,
          foregroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Settings",
            style: Mystyle.fs22,
          )),
      body: Column(children: [
        MY_Listtile(
          leading: Image.asset(Myimage.profile),
          title: Text("Susi Franklin", style: Mystyle.fs20),
          subtitle: Text("Hey there! I am using WhatsApp"),
          fun: () {
            Appservices.pushscreen(context, Profile());
          },
          trailing: Icon(Icons.qr_code),
        ),
        Divider(height: 14, thickness: 1.2, color: Mycolor.grey),
        MY_Listtile(
          leading: Icon(
            Icons.key,
            color: Mycolor.grey,
          ),
          title: Text("Account", style: Mystyle.fs18),
          subtitle: Text("Privacy, security , change number"),
          fun: () {
            ;
            Appservices.pushscreen(context, Account());
          },
        ),
        MY_Listtile(
          leading: Icon(
            Icons.chat,
            color: Mycolor.grey,
          ),
          title: Text("Chats", style: Mystyle.fs18),
          subtitle: Text("Theme, wallpapers, chat history"),
          fun: () {
            Appservices.pushscreen(context, Chats());
          },
        ),
        MY_Listtile(
          fun: () {
            Appservices.pushscreen(context, Notifiction());
          },
          leading: Icon(
            Icons.notifications,
            color: Mycolor.grey,
          ),
          title: Text("Notifications", style: Mystyle.fs18),
          subtitle: Text("Message, group & call tones"),
        ),
        MY_Listtile(
          fun: () {
            Appservices.pushscreen(context, Storage());
          },
          leading: Icon(
            Icons.data_saver_off_outlined,
            color: Mycolor.grey,
          ),
          title: Text("Storage and data", style: Mystyle.fs18),
          subtitle: Text("Network usage, auto-download"),
        ),
        MY_Listtile(
          fun: () {
            Appservices.pushscreen(context, Help());
          },
          leading: Icon(
            Icons.help_outline_rounded,
            color: Mycolor.grey,
          ),
          title: Text("Help", style: Mystyle.fs18),
          subtitle: Text("Help centre, contact us, privacy policy"),
        ),
        MY_Listtile(
          leading: Icon(
            Icons.people,
            color: Mycolor.grey,
          ),
          title: Text("Invite a friend", style: Mystyle.fs18),
        ),
      ]),
    );
  }
}
