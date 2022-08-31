import 'package:flutter/material.dart';
import 'package:flutter_demo/Musicapp/homepagemusic.dart';
import 'package:flutter_demo/chat-ui/welcomescreen.dart';
import 'package:flutter_demo/money/moneyui.dart';
import 'package:flutter_demo/utilites/my-button.dart';
import 'package:flutter_demo/utilites/my_cards.dart';
import 'package:flutter_demo/whatsappChat_Ui/container.dart';
import 'package:flutter_demo/whatsappChat_Ui/whatsapp_ui.dart';
import 'package:flutter_demo/utilites/my_cards.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen()
    );
  }
}
