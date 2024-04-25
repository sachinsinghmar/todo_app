import 'package:flutter/material.dart';
import 'package:whatshapp/services/ALL_List_data.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/my_listtile.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Settings_pages/ACCOUNT_pages/ACCOUNT_info.dart';
import 'package:whatshapp/views/screens/Login_pages/Two_step_verification.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Settings_pages/ACCOUNT_pages/change_number.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Settings_pages/ACCOUNT_pages/delete_account.dart';
import 'package:whatshapp/views/screens/ALL_home/home.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Settings_pages/ACCOUNT_pages/security.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Mycolor.darkgreen,
        foregroundColor: Colors.white,
        title: Text("Account", style: Mystyle.fs22),
      ),
      body: Column(
        children: [
          ...List.generate(
              MyList.my_Account.length,
              (index) => MY_Listtile(
                    fun: () {
                      data(MyList.my_Account[index]["id"], context);
                    },
                    leading: MyList.my_Account[index]["icn"],
                    title: Text(MyList.my_Account[index]["name"],
                        style: Mystyle.fs16),
                  ))
        ],
      ),
    );
  }

  data(String account, BuildContext context) {
    switch (account) {
      case "Privacy":
        Appservices.pushscreen(context, Home());
      case "Security":
        Appservices.pushscreen(context, Security());
      case "verification":
        Appservices.pushscreen(context, Verification());
      case "changenumber":
        Appservices.pushscreen(context, Change_number());
      case "request":
        Appservices.pushscreen(context, Account_request());
      case "delete_account":
        Appservices.pushscreen(context, Delete_account());
    }
  }
}
