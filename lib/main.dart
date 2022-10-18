import 'package:chatappui/Screens/callScreen.dart';
import 'package:chatappui/Screens/chatScreen.dart';
import 'package:chatappui/Screens/statusScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: ChatScreen.id,
    routes: {
      ChatScreen.id:(context) => ChatScreen(),
      CallScreen.id:(context) => CallScreen(),
      Statusscreen.id:(context) => Statusscreen()
    },
  ));
}
