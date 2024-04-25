import 'package:flutter/material.dart';
import 'package:whatshapp/services/ALL_List_data.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/Button_Dilogbox.dart';
import 'package:whatshapp/views/components/Coustam_alert_box/Aleart_box.dart';

import 'package:whatshapp/views/components/my_listtile.dart';
import 'package:whatshapp/views/components/switcher_listtile.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Settings_pages/Storage/Manage_storage.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Settings_pages/Storage/Network_use.dart';

class Storage extends StatelessWidget {
  const Storage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Mycolor.darkgreen,
          foregroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Storage and data",
            style: Mystyle.fs22,
          )),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          MY_Listtile(
            fun: () {
              Appservices.pushscreen(context, Manage_storage());
            },
            leading: Icon(Icons.folder),
            title: Text("Manage storage"),
            subtitle: Text("3.1 MB"),
          ),
          Divider(
            color: Mycolor.divider,
          ),
          MY_Listtile(
            leading: Icon(Icons.data_saver_off_rounded),
            title: Text("Network usage"),
            subtitle: Text("6.1 MB sent  69.2 MB received"),
            fun: () {
              Appservices.pushscreen(context, Network_uses());
            },
          ),
          Switcher_listtile(
            leading: SizedBox(),
            title: Text("Use less data for calls"),
          ),
          Divider(
            color: Mycolor.divider,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Media auto-download",
                  style: Mystyle.fs16.copyWith(color: Mycolor.grey),
                ),
                Text(
                  "Voice messages are always automatically downloaded",
                  style: Mystyle.fs16.copyWith(color: Mycolor.grey),
                ),
                MY_Listtile(
                  leading: SizedBox(),
                  fun: () {
                    return showDialog(
                      context: context,
                      builder: (context) {
                        return Button_dilog_box(
                            text: "When using mobile data",
                            lbutton: "cancle",
                            checker: true,
                            name: [
                              {"name": "Photos", "value": false},
                              {"name": "Audio", "value": false},
                              {"name": "Vedio", "value": false},
                              {"name": "Documents", "value": false},
                            ],
                            rbutton: "ok");
                      },
                    );
                  },
                  title: Text("When using mobile data"),
                  subtitle: Text("Photos"),
                ),
                MY_Listtile(
                  leading: SizedBox(),
                  fun: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Button_dilog_box(
                            text: "When connected on Wi-Fi",
                            lbutton: "cancle",
                            checker: true,
                            name: [
                              {"name": "Photos", "value": false},
                              {"name": "Audio", "value": false},
                              {"name": "Vedio", "value": false},
                              {"name": "Documents", "value": false},
                            ],
                            rbutton: "ok");
                      },
                    );
                  },
                  title: Text("When connected on Wi-Fi"),
                  subtitle: Text("All media"),
                ),
                MY_Listtile(
                  leading: SizedBox(),
                  fun: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Button_dilog_box(
                            text: "When roaming",
                            lbutton: "cancle",
                            checker: true,
                            name: [
                              {"name": "Photos", "value": false},
                              {"name": "Audio", "value": false},
                              {"name": "Vedio", "value": false},
                              {"name": "Documents", "value": false},
                            ],
                            rbutton: "ok");
                      },
                    );
                  },
                  title: Text("When roaming"),
                  subtitle: Text("No media"),
                )
              ],
            ),
          ),
          Divider(
            color: Mycolor.divider,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Media upload quality",
                    style: Mystyle.fs16.copyWith(color: Mycolor.grey)),
                Text(
                  "Choose the quality of media files to be sent",
                  style: Mystyle.fs16.copyWith(color: Mycolor.grey),
                ),
                MY_Listtile(
                  leading: SizedBox(),
                  fun: () {
                    return showDialog(
                      context: context,
                      builder: (context) {
                        return Alert_box(
                          name: MyList.photoqulity,
                          button: true,
                        );
                      },
                    );
                  },
                  title: Text("Photo upload quality"),
                  subtitle: Text("Auto (recommended)"),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
