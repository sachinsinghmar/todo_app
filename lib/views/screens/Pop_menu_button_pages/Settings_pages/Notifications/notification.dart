import 'package:flutter/material.dart';
import 'package:whatshapp/services/ALL_List_data.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/App_buttons.dart';
import 'package:whatshapp/views/components/Coustam_alert_box/Aleart_box.dart';
import 'package:whatshapp/views/components/my_listtile.dart';

class Notifiction extends StatefulWidget {
  const Notifiction({super.key});
  @override
  State<Notifiction> createState() => _NotifictionState();
}

class _NotifictionState extends State<Notifiction> {
  bool isselect = false;
  bool notification = false;
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Mycolor.darkgreen,
          foregroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Notification",
            style: Mystyle.fs22,
          )),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Column(
            children: [
              Appservices.giveheight(10),
              SwitchListTile(
                value: isselect,
                activeColor: Mycolor.darkgreen,
                thumbColor: MaterialStatePropertyAll(Mycolor.darkgreen),
                onChanged: (value) {
                  setState(() {
                    isselect = value;
                  });
                },
                title: Text("Conversation tones"),
                subtitle:
                    Text("Play sounds for incoming and outgoing messages."),
              ),
              Divider(
                thickness: 3,
                color: Mycolor.divider,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Messages",
                  style: Mystyle.fs15.copyWith(color: Mycolor.grey),
                ),
                MY_Listtile(
                  title: Text("Notification tone"),
                  subtitle: Text("Default (WaterDrop_preview.ogg)"),
                ),
                MY_Listtile(
                  title: Text("Vibrate"),
                  subtitle: Text("Default"),
                  fun: () {
                    return showDialog(
                        context: context,
                        builder: (context) {
                          return Alert_box(
                            name: MyList.vibration,
                            button: false,
                          );
                        });
                  },
                ),
                MY_Listtile(
                  title: Text("Popup notification"),
                  subtitle: Text("Not available",
                      style: TextStyle(color: Mycolor.black)),
                  fun: () {
                    return showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Column(children: [
                              Text(
                                  "Popup notifications are no longer avilable in your version of Android",
                                  style: Mystyle.fs16),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  MYSmallbtn(
                                    navigator: () {},
                                    text: "LEARN MORE",
                                    width: Appservices.getscreenwidth(context) *
                                        0.25,
                                    textStyle: Mystyle.fs16
                                        .copyWith(color: Mycolor.darkgreen),
                                  ),
                                  MYSmallbtn(
                                    navigator: () {},
                                    text: "OK",
                                    width: Appservices.getscreenwidth(context) *
                                        0.2,
                                    textStyle: Mystyle.fs16
                                        .copyWith(color: Mycolor.darkgreen),
                                  )
                                ],
                              )
                            ]),
                          );
                        });
                  },
                ),
                MY_Listtile(
                  fun: () {
                    return showDialog(
                      context: context,
                      builder: (context) {
                        return Alert_box(
                          name: MyList.light,
                          button: false,
                        );
                      },
                    );
                  },
                  title: Text("Light"),
                  subtitle: Text(
                    "Green",
                  ),
                ),
                SwitchListTile(
                  value: notification,
                  activeColor: Mycolor.darkgreen,
                  thumbColor: MaterialStatePropertyAll(Mycolor.darkgreen),
                  onChanged: (value) {
                    setState(() {
                      notification = value;
                    });
                  },
                  title: Text("Use high priority notifications"),
                  subtitle: Text(
                      "Show previews of notifications at the top of the screen"),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 3,
            color: Mycolor.divider,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Groups",
                  style: Mystyle.fs15.copyWith(color: Mycolor.grey),
                ),
                MY_Listtile(
                  title: Text("Notification tone"),
                  subtitle: Text("Default (WaterDrop_preview.ogg)"),
                ),
                MY_Listtile(
                  title: Text("Vibrate"),
                  subtitle: Text("Default"),
                  fun: () {
                    return showDialog(
                        context: context,
                        builder: (context) {
                          return Alert_box(
                            name: MyList.vibration,
                            button: false,
                          );
                        });
                  },
                ),
                MY_Listtile(
                  fun: () {
                    return showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Column(children: [
                            Text(
                                "Popup notifications are no longer avilable in your version of Android",
                                style: Mystyle.fs16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MYSmallbtn(
                                  navigator: () {},
                                  text: "LEARN MORE",
                                  width: Appservices.getscreenwidth(context) *
                                      0.25,
                                  textStyle: Mystyle.fs16
                                      .copyWith(color: Mycolor.darkgreen),
                                ),
                                MYSmallbtn(
                                  navigator: () {},
                                  text: "OK",
                                  width:
                                      Appservices.getscreenwidth(context) * 0.2,
                                  textStyle: Mystyle.fs16
                                      .copyWith(color: Mycolor.darkgreen),
                                )
                              ],
                            )
                          ]),
                        );
                      },
                    );
                  },
                  title: Text("Popup notification"),
                  subtitle: Text("Not available",
                      style: TextStyle(color: Mycolor.black)),
                ),
                MY_Listtile(
                  fun: () {
                    return showDialog(
                      context: context,
                      builder: (context) {
                        return Alert_box(
                          name: MyList.light,
                          button: false,
                        );
                      },
                    );
                  },
                  title: Text("Light"),
                  subtitle: Text(
                    "Green",
                  ),
                ),
                SwitchListTile(
                  value: selected,
                  activeColor: Mycolor.darkgreen,
                  thumbColor: MaterialStatePropertyAll(Mycolor.darkgreen),
                  onChanged: (value) {
                    setState(() {
                      selected = value;
                    });
                  },
                  title: Text("Use high priority notifications"),
                  subtitle: Text(
                      "Show previews of notifications at the top of the screen"),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
