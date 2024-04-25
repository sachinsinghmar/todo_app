import 'package:flutter/material.dart';
import 'package:whatshapp/modals/Person_modal.dart';
import 'package:whatshapp/modals/chat_model.dart';
import 'package:whatshapp/modals/wallpaper_modal.dart';

class All_Controler extends ChangeNotifier {
  List<Contact_modal> _data = [];
  List<Contact_modal> get Getalldata => _data;
  Setalldata(List<Contact_modal> Number) {
    _data = Number;
    notifyListeners();
  }

  List<ChatModel> _chats = [];
  List<ChatModel> get chats => _chats;

  setChats(List<ChatModel> data) {
    _chats = data;
    notifyListeners();
  }

  addChat(ChatModel chat) {
    _chats.add(chat);
    notifyListeners();
  }

  /////////////////////   controler of wallpaper////////////////////////////

  List<Wallpaper_modal> _wallpaper = [];
  List<Wallpaper_modal> get walldata => _wallpaper;
  setwallpaper(List<Wallpaper_modal> data) {
    _wallpaper = data;
    notifyListeners();
  }

  String _chatBackground = "assets/images/mountain.jpg";
  String get chatBackground => _chatBackground;

  setChatBackground(String url) {
    _chatBackground = url;
    notifyListeners();
  }
}
