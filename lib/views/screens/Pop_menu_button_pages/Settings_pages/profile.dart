import 'dart:io';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/my_listtile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? imagefile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Profile", style: Mystyle.fs20),
          elevation: 0,
          backgroundColor: Mycolor.darkgreen,
          foregroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Stack(alignment: Alignment.bottomRight, children: [
                Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Mycolor.grey),
                    child: imagefile == null
                        ? Image.asset("assets/images/profiledata.png")
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(1000),
                            child: Image.file(
                              imagefile!,
                              fit: BoxFit.cover,
                            ),
                          )),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Mycolor.darkgreen),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          context: context,
                          builder: (context) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [imagePickerbottomsheet()],
                            );
                          },
                        );
                      });
                    },
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ),
                )
              ]),
            ),
            Appservices.giveheight(20),
            MY_Listtile(
                leading: Icon(
                  Icons.person,
                  size: 35,
                ),
                title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name",
                          style: Mystyle.fs16.copyWith(color: Mycolor.grey)),
                      Appservices.giveheight(7),
                      Text(
                        "Susi Franklin",
                        style: Mystyle.fs17,
                      ),
                      Appservices.giveheight(10)
                    ]),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Mycolor.darkgreen,
                    )),
                subtitle: Text(
                  "This is not your username or pin. This name will be visible to your whatsApp contacts.",
                  style: TextStyle(color: Mycolor.grey),
                )),
            Divider(),
            MY_Listtile(
              leading: Icon(Icons.info_outlined),
              title: Text("About", style: TextStyle(color: Mycolor.grey)),
              subtitle: Text("Hey there! I am using whatsApp.",
                  style: Mystyle.fs17.copyWith(color: Colors.black)),
              trailing: Icon(Icons.edit, color: Mycolor.darkgreen),
            ),
            MY_Listtile(
              leading: Icon(Icons.phone),
              title: Text("Phone", style: TextStyle(color: Mycolor.grey)),
              subtitle: Text("+91 1234567890",
                  style: Mystyle.fs17.copyWith(color: Colors.black)),
            )
          ],
        ),
      ),
    );
  }

  getiamgefromgallery() async {
    // ignore: invalid_use_of_visible_for_testing_member
    var getimage = await ImagePicker.platform
        .getImageFromSource(source: ImageSource.gallery);
    if (getimage != null) {
      setState(() {
        imagefile = File(getimage.path);
      });
    }
    Appservices.goback(context);
  }

  getiamgefromcamera() async {
    // ignore: invalid_use_of_visible_for_testing_member
    var getimage = await ImagePicker.platform
        .getImageFromSource(source: ImageSource.camera);
    if (getimage != null) {
      imagefile = File(getimage.path);
    }
    Appservices.goback(context);
  }

  imagePickerbottomsheet() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Profile photo", style: Mystyle.fs20),
              IconButton(
                  onPressed: () {
                    return Appservices.goback(context);
                  },
                  icon: Icon(Icons.keyboard_arrow_down_outlined))
            ],
          ),
          Appservices.giveheight(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Text("Image Picker"),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Mycolor.grey)),
                    child: IconButton(
                        onPressed: () {
                          return getiamgefromcamera();
                        },
                        icon: Icon(
                          Icons.camera_alt,
                          color: Mycolor.darkgreen,
                        )),
                  ),
                  Appservices.giveheight(7),
                  Text("Camera")
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Mycolor.grey)),
                    child: IconButton(
                        onPressed: () {
                          return getiamgefromgallery();
                        },
                        icon: Icon(
                          Icons.photo_rounded,
                          color: Mycolor.darkgreen,
                        )),
                  ),
                  Appservices.giveheight(7),
                  Text("Gallery")
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Mycolor.grey)),
                    child: IconButton(
                        onPressed: () {
                          return Appservices.goback(context);
                        },
                        icon: Icon(
                          Icons.delete,
                          color: Mycolor.darkgreen,
                        )),
                  ),
                  Appservices.giveheight(7),
                  Text("Delete")
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
