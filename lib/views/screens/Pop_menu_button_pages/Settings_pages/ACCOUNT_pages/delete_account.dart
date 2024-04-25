import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/App_buttons.dart';

class Delete_account extends StatefulWidget {
  @override
  _Delete_accountState createState() => _Delete_accountState();
}

class _Delete_accountState extends State<Delete_account> {
  String _selectedCountryCode = '+ 91';

  String countary = "India";

  void _showCountryPicker() {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      onSelect: (Country country) {
        setState(() {
          _selectedCountryCode = '+${country.phoneCode}';
          countary = "${country.displayNameNoCountryCode}";
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> list = [
      {
        "icon": Icon(
          Icons.warning,
          color: Colors.red,
        ),
        "text": "Delete your account from WhatsApp"
      },
      {
        "icon": Icon(
          Icons.warning,
          color: Colors.red,
        ),
        "text": "Erase your message history"
      },
      {
        "icon": Icon(
          Icons.warning,
          color: Colors.red,
        ),
        "text": "Delete you from all of your WhatsApp groups"
      },
      {
        "icon": Icon(
          Icons.warning,
          color: Colors.red,
        ),
        "text": "Delete your payments history and cancel any pending payments"
      }
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Security", style: Mystyle.fs22),
        backgroundColor: Mycolor.darkgreen,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Icon(
                  Icons.warning,
                  color: Colors.red,
                ),
                Appservices.givewidth(10),
                Text(
                  "Deleting your account will:",
                  style: Mystyle.fs17.copyWith(color: Colors.red),
                )
              ],
            ),
            Appservices.giveheight(20),
            ...List.generate(list.length, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 7,
                          color: Color(0xffF61111),
                        ),
                        Appservices.givewidth(10),
                        Expanded(
                            child: Text(
                          list[index]["text"].toString(),
                          style: Mystyle.fs16.copyWith(color: Mycolor.grey),
                        )),
                      ],
                    ),
                    Appservices.giveheight(10),
                  ],
                ),
              );
            }),
            Divider(
              color: Mycolor.divider,
              indent: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.phone_android_sharp, color: Mycolor.grey),
                Appservices.givewidth(20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Change number instead?", style: Mystyle.fs16),
                    MYSmallbtn(
                      navigator: () {},
                      text: "Next",
                      bgclr: Mycolor.darkgreen,
                      textStyle: Mystyle.fs16.copyWith(color: Colors.white),
                      width: Appservices.getscreenheight(context) * 0.3,
                    ),
                  ],
                )
              ],
            ),
            Divider(
              color: Mycolor.divider,
            ),
            Appservices.giveheight(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "To delete your account, confirm your country code and enter your phone number.",
                style: Mystyle.fs16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Appservices.giveheight(20),
                  Text("Country",
                      style: Mystyle.fs16.copyWith(color: Mycolor.grey)),
                  TextField(
                    decoration: InputDecoration(
                        hoverColor: Mycolor.grey,
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Mycolor.divider)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Mycolor.divider)),
                        hintText: "${countary}",
                        hintStyle: Mystyle.fs16,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20)),
                    onTap: () => _showCountryPicker(),
                  ),
                  Appservices.giveheight(30),
                  Text("Phone",
                      style: Mystyle.fs16.copyWith(color: Mycolor.grey)),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Mycolor.divider)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Mycolor.divider)),
                              hintText: _selectedCountryCode,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10)),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 8,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Mycolor.divider)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Mycolor.divider)),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            hintText: 'Phone Number',
                          ),
                          onChanged: (value) {
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                  Appservices.giveheight(10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: MYSmallbtn(
                navigator: () {},
                text: "DELETE MY ACCOUNT",
                width: Appservices.getscreenwidth(context) * 0.4,
                textStyle: Mystyle.fs16.copyWith(color: Colors.white),
                bgclr: Mycolor.red,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
