import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/images.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/App_buttons.dart';
import 'package:whatshapp/views/components/my_listtile.dart';

class Final_payment extends StatelessWidget {
  const Final_payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Payments"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          Image.asset(Myimage.bankaccount),
          Appservices.giveheight(10.h),
          Text(
            textAlign: TextAlign.center,
            "Send and recieve money securely, right\nwhere you chat",
            style: Mystyle.fs18,
          ),
          Appservices.giveheight(30),
          MY_Listtile(
            leading: Icon(Icons.people),
            title: Text(
                "Crores of people are already using payments on whatshapp"),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset(Myimage.bhim), Image.asset(Myimage.upi)],
          ),
          MYSmallbtn(
            navigator: () {},
            text: "CONTINUE",
            bgclr: Mycolor.darkgreen,
            textStyle: Mystyle.fs16.copyWith(color: Colors.white),
          )
        ]),
      ),
    );
  }
}
