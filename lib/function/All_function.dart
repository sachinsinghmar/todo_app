import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'package:provider/provider.dart';
import 'package:whatshapp/controllers/All_Controler.dart';
import 'package:whatshapp/modals/Person_modal.dart';
import 'package:whatshapp/modals/chat_model.dart';
import 'package:whatshapp/modals/wallpaper_modal.dart';

class All_Function {
  static Alldata(BuildContext context) async {
    final aa = Provider.of<All_Controler>(context, listen: false);
    List<Contact_modal> data = [];

    var response = await rootBundle.loadString("assets/jsons/contact.json");
    var jsondecode = jsonDecode(response);
    data =
        (jsondecode as List).map((e) => Contact_modal.fromAlldata(e)).toList();
    aa.Setalldata(data);
  }

  static getChats(BuildContext context) async {
    final provider = Provider.of<All_Controler>(context, listen: false);
    List<ChatModel> data = [];

    var response = await rootBundle.loadString("assets/jsons/chats.json");
    var snapshot = jsonDecode(response);
    data = (snapshot as List).map((e) => ChatModel.fromJson(e)).toList();
    provider.setChats(data);
  }

  // ==========================================
  // otp
  generateotp() {
    List<int> number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
    number.shuffle();
    var a = number.join().substring(0, 4);
    print("otp is   ====>>>>>>>>>>   $a");
    return a;
  }

  ////////////////////////////////  fuction of all wallpaper////////////////

  static getwallpaper(BuildContext context) async {
    final provider = Provider.of<All_Controler>(context, listen: false);
    List<Wallpaper_modal> data = [];

    var response = await rootBundle.loadString("assets/jsons/wallpaper.json");
    var snapshot = jsonDecode(response);
    data = (snapshot as List).map((e) => Wallpaper_modal.fromjson(e)).toList();
    provider.setwallpaper(data);
    print(data);
  }
}
