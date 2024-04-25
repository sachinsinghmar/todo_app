import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_camera/camera/camera_whatsapp.dart';
import 'package:whatshapp/views/screens/ALL_home/ADD_camera.dart';

import 'package:whatshapp/views/screens/ALL_home/ADD_contact.dart';
import 'package:whatshapp/views/screens/ALL_home/Add_image.dart';
import 'package:whatshapp/views/screens/ALL_home/calls.dart';

import 'package:whatshapp/views/screens/ALL_home/chat_screen_all.dart';
import 'package:whatshapp/views/screens/ALL_home/status.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Linked_Devices/Linked_device.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Starred_message.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Payments/payment.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Settings_pages/setting.dart';

class Home extends StatefulWidget {
  final int tabIndex;
  const Home({super.key, this.tabIndex = 1});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final files = ValueNotifier(<File>[]);
  int index = 0;
  File? imagefile;
  bool isOpen = false;

  late TabController _tabController =
      TabController(length: 4, vsync: this, initialIndex: widget.tabIndex);
  bool istrue = true;
  @override
  void initState() {
    super.initState();
    _tabController.addListener(() async {
      if (_tabController.index == 0 && !isOpen) {
        setState(() {
          isOpen = true;
        });
        print(_tabController.previousIndex);
        await Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => WhatsappCamera()))
            .then((value) {
          try {
            if ((value as List).isNotEmpty) {
              print("*****************************************");
              print(value[0].toString().split(":").last.trim());
              print("*****************************************");
              Appservices.pushscreen(
                  context,
                  Add_image(
                      images: value.map((e) {
                    final str1 = e.toString().split(":").last.trim();
                    return str1.substring(1, str1.length - 1);
                  }).toList()));
            }
            setState(() => _tabController.animateTo(1));
          } catch (e) {
            setState(() => _tabController.animateTo(1));
          } finally {
            setState(() {
              isOpen = false;
            });
          }
          
        });
      }
      // _tabController.index == 0 ? {} : null;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: istrue
          ? AppBar(
              title: Text('WhatsApp'),
              backgroundColor: Mycolor.darkgreen,
              automaticallyImplyLeading: false,
              elevation: 0.7,
              bottom: TabBar(
                controller: _tabController,
                indicatorColor: Colors.white,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.camera_alt)),
                  Tab(text: 'CHATS'),
                  Tab(text: 'STATUS'),
                  Tab(text: 'CALLS'),
                ],
              ),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      setState(() {
                        istrue == !istrue;
                      });
                    }),
                Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
                PopupMenuButton(
                  itemBuilder: (context) => _tabController.index == 0
                      ? []
                      : _tabController.index == 1
                          ? [
                              PopupMenuItem(
                                child: Text("New group"),
                                onTap: () {},
                              ),
                              PopupMenuItem(
                                child: Text("New broadcast"),
                                onTap: () {},
                              ),
                              PopupMenuItem(
                                child: Text("Linked devices"),
                                onTap: () {
                                  Appservices.pushscreen(
                                      context, Linked_devices());
                                },
                              ),
                              PopupMenuItem(
                                child: Text("Starred messages"),
                                onTap: () {
                                  Appservices.pushscreen(
                                      context, Starred_messages());
                                },
                              ),
                              PopupMenuItem(
                                child: Text("Payments"),
                                onTap: () {
                                  Appservices.pushscreen(context, Payment());
                                },
                              ),
                              PopupMenuItem(
                                child: Text("Settings"),
                                onTap: () {
                                  Appservices.pushscreen(context, Setting());
                                },
                              )
                            ]
                          : _tabController.index == 2
                              ? [
                                  PopupMenuItem(
                                    child: Text("Status privacy"),
                                  ),
                                  PopupMenuItem(
                                    child: Text("Seattings"),
                                  )
                                ]
                              : [
                                  PopupMenuItem(
                                    child: Text("Clear call log"),
                                  ),
                                  PopupMenuItem(
                                    child: Text("Seattings"),
                                  )
                                ],
                )
              ],
            )
          : AppBar(
              title: Text("Search..."),
              bottom: PreferredSize(
                  preferredSize: Size(Appservices.getscreenwidth(context), 100),
                  child: Column(
                    children: [
                      Row(
                        children: [Text("bdjbhn")],
                      )
                    ],
                  )),
            ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Camera(),
          // WhatsappCamera(),
          Chat_screen_all(),
          Status_home(),
          Calls(),
        ],
      ),
      floatingActionButton: _tabController.index == 0
          ? null
          : _tabController.index == 1
              ? FloatingActionButton(
                  backgroundColor: Mycolor.darkgreen,
                  child: Icon(Icons.message, color: Colors.white),
                  onPressed: () {
                    Appservices.pushscreen(context, ADD_contact());
                  },
                )
              : _tabController.index == 2
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FloatingActionButton(
                          backgroundColor: Mycolor.darkgreen,
                          child: Icon(Icons.edit, color: Colors.white),
                          onPressed: () {},
                        ),
                        Appservices.giveheight(3),
                        FloatingActionButton(
                          backgroundColor: Mycolor.darkgreen,
                          child: Icon(Icons.message, color: Colors.white),
                          onPressed: () {},
                        ),
                      ],
                    )
                  : FloatingActionButton(
                      backgroundColor: Mycolor.darkgreen,
                      child: Icon(Icons.phone_forwarded_rounded,
                          color: Colors.white),
                      onPressed: () {},
                    ),
    );
  }

  getiamgefromcamera() async {
    // ignore: invalid_use_of_visible_for_testing_member
    var getimage = await ImagePicker.platform
        .getImageFromSource(source: ImageSource.camera);
    if (getimage != null) {
      imagefile = File(getimage.path);
    }
    setState(() {
      _tabController.index = 1;
    });
    // Appservices.goback(context);
  }
}
