import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:whatshapp/controllers/All_Controler.dart';

import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/screens/ALL_home/Person_chat.dart';

// ignore: must_be_immutable
class Chat_screen_all extends StatelessWidget {
  const Chat_screen_all({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var a = Provider.of<All_Controler>(context);
    var b = a.Getalldata;

    // print(b.length);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ...List.generate(
                b.length,
                (index) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        leading: Container(
                          height: 50.sp,
                          width: 50.sp,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset(b[index].images),
                        ),
                        title: Text(b[index].names,
                            style: Mystyle.fs16.copyWith(color: Mycolor.black)),
                        subtitle: Text(b[index].subtitle),
                        trailing: Column(
                          children: [Text(b[index].time), Text("")],
                        ),
                        onTap: () {
                          Appservices.pushscreen(
                              context,
                              Message(
                                data: b[index],
                              ));
                        },
                      ),
                    ))
          ],
        ),
      ),
    );
  }
}
//  ListTile(
//               leading: Container(
//                 height: 40.sp,
//                 width: 40.sp,
//                 decoration:
//                     BoxDecoration(shape: BoxShape.circle, color: Mycolor.red),
//                 // child:
//                 //Image.asset(""),
//               ),
//               title: Text(name[index].names),
//               subtitle: Text("Lorem ipsum dolor sit"),
//               trailing: Column(
//                 children: [Text("4:50PM"), Text("")],
//               ),
//               onTap: () {
//                 Appservices.pushscreen(context, Message());
//               },
//             );