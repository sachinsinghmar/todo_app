import 'package:flutter/material.dart';
import 'package:whatshapp/services/ALL_List_data.dart';
import 'package:whatshapp/views/components/my_listtile.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...List.generate(
              MyList.calls.length,
              (index) => MY_Listtile(
                    leading: Image.asset(MyList.calls[index]["image"]),
                    title: Text(MyList.calls[index]["name"]),
                    subtitle: Row(
                      children: [
                        MyList.calls[index]["icnsub"],
                        Text(MyList.calls[index]["subtitle"]),
                      ],
                    ),
                    trailing: MyList.calls[index]["iconback"],
                  ))
        ],
      ),
    );
  }
}
