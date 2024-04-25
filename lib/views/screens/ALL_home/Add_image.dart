import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/views/screens/ALL_home/Person_chat.dart';
import 'package:whatshapp/views/screens/ALL_home/home.dart';

class Add_image extends StatelessWidget {
  final List<String> images;
  const Add_image({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    // final files = ValueNotifier(<File>[]);
    print(images);
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0)
            .copyWith(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Row(
          children: [
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: Mycolor.black,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Mycolor.black)),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.add_a_photo,
                          color: Colors.white,
                        ),
                        suffixIcon: Icon(
                          Icons.filter_1,
                          color: Colors.white,
                        ),
                        hintText: "Add a caption...",
                        hintStyle: TextStyle(color: Colors.white)),
                  )),
            ),
            Appservices.givewidth(10),
            InkWell(
              onTap: () {
                Appservices.pushscreen(context, Home());
              },
              child: CircleAvatar(
                backgroundColor: Mycolor.darkgreen,
                child: Icon(Icons.check, color: Colors.white),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Image.file(File(images[index]));
            },
          ),
          IconButton(
              onPressed: () {
                Appservices.goback(context);
              },
              icon: Icon(
                Icons.cancel,
                color: Colors.white,
                size: 40,
              ))
        ]),
      ),
    );
  }
}
