import 'package:flutter/material.dart';
import 'package:whatshapp/services/app_colors.dart';

class ALL_chat_List extends StatelessWidget {
  const ALL_chat_List({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(50),
        decoration: BoxDecoration(shape: BoxShape.circle, color: Mycolor.red),
      ),
      title: Text("Aron"),
      subtitle: Text("Lorem ipsum dolor sit"),
      trailing: Text("4:50PM"),
    );
  }
}
