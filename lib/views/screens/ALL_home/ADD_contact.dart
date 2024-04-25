import 'package:flutter/material.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/my_listtile.dart';

class ADD_contact extends StatelessWidget {
  const ADD_contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Mycolor.darkgreen,
          foregroundColor: Colors.white,
          actions: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                PopupMenuButton(
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(child: Text("Invite a friend")),
                      PopupMenuItem(child: Text("Contacts")),
                      PopupMenuItem(child: Text("Refresh")),
                      PopupMenuItem(child: Text("Help"))
                    ];
                  },
                )
              ],
            )
          ],
          title: Column(
            children: [
              Text("Select contact"),
              Text(
                "365 contacts",
                style: Mystyle.fs18,
              )
            ],
          )),
      body: Column(
        children: [
          MY_Listtile(
            leading: CircleAvatar(
                foregroundColor: Mycolor.black,
                child: Icon(Icons.people),
                backgroundColor: Mycolor.darkgreen),
            title: Text("New group"),
          ),
          MY_Listtile(
            leading: CircleAvatar(
                foregroundColor: Mycolor.black,
                child: Icon(Icons.person_add_alt),
                backgroundColor: Mycolor.darkgreen),
            title: Text("New contact"),
            trailing: Icon(Icons.qr_code_2_outlined),
          )
        ],
      ),
    );
  }
}
