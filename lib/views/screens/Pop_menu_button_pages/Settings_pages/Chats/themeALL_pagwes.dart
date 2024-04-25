import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:whatshapp/controllers/All_Controler.dart';

import 'package:whatshapp/modals/wallpaper_modal.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Settings_pages/Chats/set_wallpaper.dart';

// ignore: must_be_immutable
class ALL_theme_data extends StatelessWidget {
  Wallpaper_modal data;
  ALL_theme_data({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    var a = Provider.of<All_Controler>(context);
    var b = a.Getalldata;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Mycolor.black,
        title: Text(data.name, style: Mystyle.fs22),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        itemCount: data.image.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Appservices.pushscreen(
                  context,
                  Set_wallpaper(
                    image: data.image[index],
                  ));
            },
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  data.image[index],
                  fit: BoxFit.cover,
                  height: 150.h,
                  width: 150.w,
                )),
          );
        },
      ),
    );
  }
}
