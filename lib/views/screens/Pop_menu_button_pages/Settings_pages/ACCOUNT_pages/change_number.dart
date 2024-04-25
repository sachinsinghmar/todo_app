import 'package:flutter/material.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/images.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/App_buttons.dart';

class Change_number extends StatelessWidget {
  const Change_number({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Security", style: Mystyle.fs22),
        backgroundColor: Mycolor.darkgreen,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Center(child: Image.asset(Myimage.change_number)),
            Appservices.giveheight(15),
            Text(
                "Changing your phone number will migrate your account info, groups & settings.",
                style: Mystyle.fs17),
            Appservices.giveheight(10),
            Text(
                "Before proceeding, please confirm that you are able to receive SMS or calls at your new number."),
            Appservices.giveheight(10),
            Text(
                "If you have both a new phone & a new number, first change your number on your old phone."),
            Spacer(),
            MYSmallbtn(
              navigator: () {},
              text: "Next",
              bgclr: Mycolor.darkgreen,
              width: 110,
              textStyle: Mystyle.fs16.copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
