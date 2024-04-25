import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/images.dart';

class MyList {
  static const List<Map<String, dynamic>> theme = [
    {"name": "Systam default", "value": 0},
    {"name": "Light", "value": 1},
    {"name": "Dark", "value": 2}
  ];
  static const List<Map<String, dynamic>> fontSize = [
    {"name": "Small", "value": 0},
    {"name": "Medium", "value": 1},
    {"name": "Large", "value": 2}
  ];
  static const List<Map<String, dynamic>> applanguage = [
    {"name": "Lorem Ipsum", "value": 0},
    {"name": "Lorem Ipsum", "value": 1},
    {"name": "Lorem Ipsum", "value": 2},
    {"name": "Lorem Ipsum", "value": 3},
    {"name": "Lorem Ipsum", "value": 4},
    {"name": "Lorem Ipsum", "value": 5},
    {"name": "Lorem Ipsum", "value": 6},
    {"name": "Lorem Ipsum", "value": 7},
  ];
  static const List<Map<String, dynamic>> light = [
    {"name": "None", "value": 0},
    {"name": "White", "value": 1},
    {"name": "Red", "value": 2},
    {"name": "Yellow", "value": 3},
    {"name": "Green", "value": 4},
    {"name": "Cyan", "value": 5},
    {"name": "Blue", "value": 6},
    {"name": "Purpal", "value": 7},
  ];
  static const List<Map<String, dynamic>> vibration = [
    {"name": "Off", "value": 0},
    {"name": "Default", "value": 1},
    {"name": "Short", "value": 2},
    {"name": "Long", "value": 3},
  ];

  static const List<Map<String, dynamic>> my_Account = [
    {"name": "Privacy", "icn": Icon(Icons.lock), "id": "Privacy"},
    {
      "name": "Security",
      "icn": Icon(
        Icons.security,
      ),
      "id": "Security"
    },
    {
      "name": "Two-step verification",
      "icn": Icon(Icons.verified_rounded),
      "id": "verification"
    },
    {
      "name": "Change number",
      "icn": Icon(Icons.phone_android_rounded),
      "id": "changenumber"
    },
    {
      "name": "Request account info",
      "icn": Icon(Icons.insert_drive_file_rounded),
      "id": "request"
    },
    {
      "name": "Delete my account",
      "icn": Icon(Icons.delete),
      "id": "delete_account"
    }
  ];

  static List<Map<String, dynamic>> delet_chat = [
    {"name": "Delete media in chats", "value": false},
    {"name": "Delete starred messages", "value": false}
  ];
  static List<Map<String, dynamic>> photoqulity = [
    {"name": "Auto (recommended)", "value": 0},
    {"name": "Best quality", "value": 1},
    {"name": "Data saver", "value": 2}
  ];

  static const List<Map<String, dynamic>> manage_stroge = [
    {
      "name": "+91 9876543210",
      "image": "assets/images/contact.png",
      "storage": "658 kB"
    },
    {
      "name": "Abramo",
      "image": "assets/images/abramo.png",
      "storage": "234 kB"
    },
    {
      "name": "Addyson",
      "image": "assets/images/addyson.png",
      "storage": "45 kB"
    },
    {
      "name": "Alcandor",
      "image": "assets/images/alcandor.png",
      "storage": "45 kB"
    }
  ];
  static const List<Map<String, dynamic>> network = [
    {
      "name": "Calls",
      "icn": Icon(Icons.phone, color: Mycolor.grey),
      "lower1": "11 outgoing",
      "lower2": "8 incoming",
      "upword": "70KB",
      "downword": "1.2MB"
    },
    {
      "name": "Media",
      "icn": Icon(Icons.photo, color: Mycolor.grey),
      "lower1": "",
      "lower2": "",
      "upword": "744 kB",
      "downword": "29.6 MB"
    },
    {
      "name": "Google Drive",
      "icn": Icon(Icons.add_to_drive_sharp, color: Mycolor.grey),
      "lower1": "",
      "lower2": "",
      "upword": "0 kB",
      "downword": "0 kB"
    },
    {
      "name": "Messages",
      "icn": Icon(Icons.message, color: Mycolor.grey),
      "lower1": "180 sent ",
      "lower2": "399 recived",
      "upword": "4.4 MB",
      "downword": "7.9MB"
    },
    {
      "name": "Status",
      "icn": Icon(Icons.data_saver_off_sharp, color: Mycolor.grey),
      "lower1": "0 sent ",
      "lower2": "3,030 recived",
      "upword": "0 kB",
      "downword": "30.5MB"
    },
    {
      "name": "Roaming",
      "icn": Icon(Icons.language, color: Mycolor.grey),
      "lower1": "11 outgoing",
      "lower2": "8 incoming",
      "upword": "0KB",
      "downword": "0MB"
    }
  ];

  static const List<Map<String, dynamic>> recentstatus = [
    {
      "name": "Abelson",
      "Subtitle": "10 minutes ago",
      "image": Myimage.sableson
    },
    {"name": "Cathor", "Subtitle": "Today, 7:29 am", "image": Myimage.scathor},
    {"name": "Steven", "Subtitle": "Today, 7:29 am", "image": Myimage.ssetven}
  ];
  static const List<Map<String, dynamic>> view = [
    {
      "name": "Franklin",
      "Subtitle": "Yesterday, 11:11 pm",
      "image": Myimage.sfrankilin
    },
    {
      "name": "Henry Ward",
      "Subtitle": "Yesterday, 11:11 pm",
      "image": Myimage.shenry
    },
    {
      "name": "Jacob Jones",
      "Subtitle": "Yesterday, 11:11 pm",
      "image": Myimage.sjacob
    }
  ];

  static const List<Map<String, dynamic>> calls = [
    {
      "name": "Aron",
      "icnsub": Icon(
        Icons.call_made_outlined,
        color: Mycolor.green,
      ),
      "iconback": Icon(
        CupertinoIcons.videocam_fill,
        color: Mycolor.green,
      ),
      "subtitle": "today, 2:00 pm",
      "image": Myimage.aron
    },
    {
      "name": "Abelson",
      "icnsub": Icon(
        Icons.call_made_outlined,
        color: Mycolor.green,
      ),
      "iconback": Icon(
        CupertinoIcons.phone_fill,
        color: Mycolor.green,
      ),
      "subtitle": "26 June, 11:04 pm",
      "image": Myimage.aron
    },
    {
      "name": "Cathor",
      "icnsub": Icon(
        Icons.call_made_outlined,
        color: Mycolor.green,
      ),
      "iconback": Icon(
        CupertinoIcons.phone_fill,
        color: Mycolor.green,
      ),
      "subtitle": "26 June, 11:04 pm",
      "image": Myimage.aron
    },
    {
      "name": "Steven",
      "icnsub": Icon(
        Icons.call_made_outlined,
        color: Mycolor.green,
      ),
      "iconback": Icon(
        CupertinoIcons.phone_fill,
        color: Mycolor.green,
      ),
      "subtitle": "26 June, 11:04 pm",
      "image": Myimage.aron
    },
    {
      "name": "Steven",
      "icnsub": Icon(
        Icons.call_made_outlined,
        color: Mycolor.green,
      ),
      "iconback": Icon(
        CupertinoIcons.phone_fill,
        color: Mycolor.green,
      ),
      "subtitle": "26 June, 11:04 pm",
      "image": Myimage.aron
    },
    {
      "name": "Henry Ward",
      "icnsub": Icon(
        Icons.call_made_outlined,
        color: Mycolor.green,
      ),
      "iconback": Icon(
        CupertinoIcons.phone_fill,
        color: Mycolor.green,
      ),
      "subtitle": "26 June, 11:04 pm",
      "image": Myimage.aron
    },
    {
      "name": "Jacob Jones",
      "icnsub": Icon(
        Icons.call_made_outlined,
        color: Mycolor.green,
      ),
      "iconback": Icon(
        CupertinoIcons.phone_fill,
        color: Mycolor.green,
      ),
      "subtitle": "26 June, 11:04 pm",
      "image": Myimage.aron
    },
    {
      "name": "Lilly",
      "icnsub": Icon(
        Icons.call_made_outlined,
        color: Mycolor.green,
      ),
      "iconback": Icon(
        CupertinoIcons.phone_fill,
        color: Mycolor.green,
      ),
      "subtitle": "26 June, 11:04 pm",
      "image": Myimage.aron
    },
  ];

  ///////////////////////////////  light theme wallpaper/////////////////
}
