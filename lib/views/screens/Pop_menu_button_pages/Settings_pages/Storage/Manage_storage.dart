import 'package:flutter/material.dart';
import 'package:whatshapp/services/ALL_List_data.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/my_listtile.dart';

class Manage_storage extends StatelessWidget {
  const Manage_storage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Mycolor.darkgreen,
          foregroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Manage storager",
            style: Mystyle.fs22,
          )),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "3.1 MB",
                    style: Mystyle.fs22.copyWith(
                      color: Mycolor.darkgreen,
                    ),
                  ),
                  Text("Used")
                ],
              ),
              Column(
                children: [
                  Text(
                    "78 GB",
                    style: Mystyle.fs22.copyWith(
                      color: Mycolor.darkgreen,
                    ),
                  ),
                  Text("Free")
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: LinearProgressIndicator(
            color: Colors.yellow,
            backgroundColor: Mycolor.grey,
            minHeight: 10,
            borderRadius: BorderRadius.circular(10),
            value: 0.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: 15,
                    color: Mycolor.darkgreen,
                  ),
                  Text("WhatsApp Media"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.circle, color: Colors.yellow, size: 15),
                  Text("Apps and other items")
                ],
              )
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Chats"), Icon(Icons.search)],
              ),
              ...List.generate(
                  MyList.manage_stroge.length,
                  (index) => MY_Listtile(
                        leading:
                            Image.asset(MyList.manage_stroge[index]["image"]),
                        title: Text(MyList.manage_stroge[index]["name"]),
                        trailing: Text(MyList.manage_stroge[index]["storage"],
                            style: TextStyle(color: Mycolor.grey)),
                      )),
              Text(
                "3 chats not displayed because they’re taking up a small amount of storage",
                style: TextStyle(color: Mycolor.grey),
              )
            ],
          ),
        )
      ]),
    );
  }
}
