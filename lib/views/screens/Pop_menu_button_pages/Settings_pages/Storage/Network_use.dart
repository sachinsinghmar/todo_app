import 'package:flutter/material.dart';

import 'package:whatshapp/services/ALL_List_data.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/Button_Dilogbox.dart';

import 'package:whatshapp/views/components/my_listtile.dart';

class Network_uses extends StatelessWidget {
  const Network_uses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Mycolor.darkgreen,
          foregroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Network usage",
            style: Mystyle.fs22,
          )),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Usage", style: Mystyle.fs17),
              Text("78 MB", style: Mystyle.fs24.copyWith(color: Mycolor.grey)),
              Appservices.giveheight(20),
              Padding(
                padding: const EdgeInsets.only(right: 90),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.arrow_upward, color: Mycolor.grey),
                            Text(
                              "Sent",
                              style: TextStyle(color: Mycolor.grey),
                            )
                          ],
                        ),
                        Text("6.1 MB")
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.arrow_downward, color: Mycolor.grey),
                            Text(
                              "Received",
                              style: TextStyle(color: Mycolor.grey),
                            )
                          ],
                        ),
                        Text("69.2 MB")
                      ],
                    )
                  ],
                ),
              ),
              Divider()
            ],
          ),
        ),
        Column(
          children: [
            ...List.generate(
              MyList.network.length,
              (index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 5, right: 20, left: 10),
                  child: Row(
                    children: [
                      MyList.network[index]["icn"],
                      Appservices.givewidth(20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(MyList.network[index]["name"],
                                    style: Mystyle.fs16),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.arrow_upward,
                                            color: Mycolor.grey),
                                        Text(MyList.network[index]["upword"],
                                            style:
                                                TextStyle(color: Mycolor.grey)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.arrow_downward,
                                          color: Mycolor.grey,
                                        ),
                                        Text(MyList.network[index]["downword"],
                                            style:
                                                TextStyle(color: Mycolor.grey)),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Appservices.giveheight(7),
                            LinearProgressIndicator(
                              backgroundColor: Mycolor.grey,
                              color: Mycolor.darkgreen,
                              value: 0.1,
                            ),
                            Row(
                              children: [
                                Text(MyList.network[index]["lower1"],
                                    style: TextStyle(color: Mycolor.grey)),
                                Text(
                                  MyList.network[index]["lower2"],
                                  style: TextStyle(color: Mycolor.grey),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
        Divider(),
        MY_Listtile(
            leading: SizedBox(),
            title: Text("REset statistics"),
            subtitle: Text("Last reset time: Never"),
            fun: () {
              return showDialog(
                  context: context,
                  builder: (context) {
                    return Button_dilog_box(
                        text: "Reset network usage statistics?",
                        lbutton: "CANCLE",
                        rbutton: "RESET");
                  });
            })
      ]),
    );
  }
}
