import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:whatshapp/controllers/All_Controler.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/my_listtile.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Settings_pages/Chats/themeALL_pagwes.dart';

class CustomAppBar extends AppBar {
  final String text;
  CustomAppBar({required this.text});
  @override
  Color? get backgroundColor => Colors.black;

  @override
  Widget? get title => Column(
        children: [Text(text)],
      );
}

class Chat_Wallpaper extends StatelessWidget {
  const Chat_Wallpaper({super.key});

  @override
  Widget build(BuildContext context) {
    var a = Provider.of<All_Controler>(context);
    var b = a.walldata;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Mycolor.darkgreen,
        title: Text("Light Theme wallpaper"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8),
              itemBuilder: (context, index) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Appservices.pushscreen(
                            context,
                            ALL_theme_data(
                              data: b[index],
                            ));
                      },
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Image.asset(
                            b[index].image.first,
                            fit: BoxFit.cover,
                            height: 150.h,
                            width: 150.w,
                          )),
                    ),
                    Appservices.giveheight(10),
                    Text(
                      b[index].name,
                      style: Mystyle.fs16,
                    )
                  ],
                );
              },
            ),
            MY_Listtile(
              leading: Icon(Icons.photo, color: Mycolor.darkgreen),
              title: Text("Default Wallpaper"),
            )
          ],
        ),
      ),
    );
  }
}
