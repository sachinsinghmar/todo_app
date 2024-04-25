import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:whatshapp/function/All_function.dart';

import 'package:whatshapp/views/components/App_buttons.dart';
import 'package:whatshapp/views/screens/Login_pages/otp.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _selectedCountryCode = '+ 91';

  String countary = "India";
  String otpsave = "";
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Enter your phone number",
                      style: Mystyle.fs22,
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.more_vert_sharp))
                  ],
                ),
                Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(children: [
                      TextSpan(
                          text:
                              "WhatsApp will need to verify your phone number.",
                          style: Mystyle.fs16),
                      TextSpan(
                          text: "What’s my number?",
                          style: Mystyle.fs16.copyWith(color: Colors.blue)),
                    ])),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      ListTile(
                        trailing: Icon(Icons.arrow_drop_down_sharp),
                        shape: BorderDirectional(
                            bottom: BorderSide(color: Mycolor.darkgreen)),
                        title: Text(countary.toString()),
                        onTap: () => _showCountryPicker(),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: TextField(
                              readOnly: true,
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Mycolor.darkgreen)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Mycolor.darkgreen)),
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
                                    borderSide:
                                        BorderSide(color: Mycolor.darkgreen)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Mycolor.darkgreen)),
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
                    ],
                  ),
                ),
                Text(" Carrier charges may apply"),
                Appservices.giveheight(10),
                Small_button(
                    text: "Next",
                    fun: () {
                      // All_Function().generateotp();
                      Flushbar(
                          flushbarPosition: FlushbarPosition.TOP,
                          backgroundColor: const Color.fromARGB(154, 3, 3, 3),
                          dismissDirection: FlushbarDismissDirection.VERTICAL,
                          duration: const Duration(seconds: 4),
                          margin: const EdgeInsets.all(10),
                          borderRadius: BorderRadius.circular(20),
                          messageText: Text(
                            "${otpsave = All_Function().generateotp()}",
                            style: const TextStyle(
                                fontSize: 25, color: Colors.white),
                          )).show(context);
                      Future.delayed(Duration(seconds: 3), () {
                        Appservices.pushscreen(
                            context,
                            Otp(
                              otp: otpsave,
                            ));
                      });
                      return showDialog(
                          builder: (context) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              title: Column(
                                children: [
                                  CircularProgressIndicator(
                                    color: Mycolor.lightgreen,
                                  ),
                                ],
                              )),
                          context: context);
                    })
              ],
            )),
      ),
    );
  }
}
