import 'package:flutter/material.dart';
import 'package:whatshapp/services/ALL_List_data.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/images.dart';
import 'package:whatshapp/views/components/my_listtile.dart';

class Status_home extends StatelessWidget {
  const Status_home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          MY_Listtile(
            leading: Image.asset(Myimage.status),
            title: Text("My status"),
            subtitle: Text("Tap to add status update"),
          ),
          Text(
            "Recent updates",
            style: TextStyle(color: Mycolor.grey),
          ),
          ...List.generate(
            MyList.view.length,
            (index) => MY_Listtile(
              leading: Image.asset(MyList.recentstatus[index]["image"]),
              title: Text(MyList.recentstatus[index]["name"]),
              subtitle: Text(MyList.recentstatus[index]["Subtitle"]),
            ),
          ),
          Text("Viewed updates", style: TextStyle(color: Mycolor.grey)),
          ...List.generate(
            MyList.view.length,
            (index) => MY_Listtile(
              leading: Image.asset(MyList.view[index]["image"]),
              title: Text(MyList.view[index]["name"]),
              subtitle: Text(MyList.view[index]["Subtitle"]),
            ),
          )
        ],
      ),
    );
  }
}
