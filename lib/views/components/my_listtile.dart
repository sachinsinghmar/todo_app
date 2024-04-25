// import 'package:flutter/material.dart';
// import 'package:whatshapp/services/app_colors.dart';
// import 'package:whatshapp/services/routes.dart';

// // ignore: must_be_immutable
// class My_listtile extends StatelessWidget {
//   String? image;
//   String? uppername;
//   Function fun;
//   String title;
//   Color? clr;
//   Color? trailingclr;
//   FontWeight? weight;
//   IconData? iconfront;
//   IconData? trailingicon;
//   String? subtitletext;
//   My_listtile({
//     super.key,
//     required this.fun,
//     this.uppername,
//     this.image,
//     this.clr,
//     this.weight,
//     this.trailingclr,
//     required this.title,
//     this.trailingicon,
//     this.iconfront,
//     this.subtitletext,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//         onTap: () => fun(),
//         leading: iconfront == null
//             ? image == null
//                 ? null
//                 : Image.asset(image!)
//             : Icon(iconfront, color: clr, size: 30),
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             uppername == null
//                 ? SizedBox()
//                 : Text(uppername!, style: TextStyle(color: Mycolor.grey)),
//             Appservices.giveheight(10),
//             Text(title, style: TextStyle(fontWeight: weight)),
//           ],
//         ),
//         trailing: trailingicon == null
//             ? null
//             : Icon(trailingicon!, color: trailingclr),
//         subtitle: subtitletext == null ? null : Text(subtitletext!));
//   }
// }
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MY_Listtile extends StatelessWidget {
  Widget? leading;
  Widget? title;
  Widget? trailing;
  Widget? subtitle;
  Function? fun;
  MY_Listtile(
      {super.key,
      this.leading,
      this.fun,
      this.subtitle,
      this.title,
      this.trailing});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: title,
      trailing: trailing,
      subtitle: subtitle,
      onTap: () => fun == null ? Null : fun!(),
    );
  }
}
