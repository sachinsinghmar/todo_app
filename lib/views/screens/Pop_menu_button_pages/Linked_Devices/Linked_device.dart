import 'package:flutter/material.dart';
import 'package:whatshapp/views/components/App_buttons.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/images.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Linked_Devices/scan_or_code.dart';

class Linked_devices extends StatelessWidget {
  const Linked_devices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Mycolor.darkgreen,
        elevation: 0,
        toolbarHeight: 60,
        title: Text(
          "Linked devices",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          Image.asset(Myimage.linkeddevice),
          Text(
            "Use WhatsAPP on other\n devices",
            textAlign: TextAlign.center,
            style: Mystyle.fs24,
          ),
          MYSmallbtn(
            navigator: () {
              Appservices.pushscreen(context, QR_code());
            },
            text: "LINK A DEVICE",
            radiuss: 10,
            bgclr: Mycolor.darkgreen,
            textStyle: Mystyle.fs20.copyWith(color: Colors.white),
          ),
          Appservices.giveheight(20),
          Divider(
            color: Color(0xffD9D9D9),
            thickness: 10,
          ),
          ListTile(
            leading: Image.asset(Myimage.vector),
            title: Text("Multi-device beta", style: Mystyle.fs18),
            subtitle: Text(
                "Use up to 4 devices without keeping your phone online. Tap to learn more.",
                style: Mystyle.fs16),
          ),
        ]),
      ),
    );
  }
}
