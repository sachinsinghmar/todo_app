import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whatsapp_camera/whatsapp_camera.dart';

class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  final files = ValueNotifier(<File>[]);

  @override
  void initState() {
    files.addListener(() => setState(() {}));
    // Appservices.pushscreen(context, WhatsappCamera());

    super.initState();
  }

  @override
  void dispose() {
    files.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: CircularProgressIndicator.adaptive(
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
