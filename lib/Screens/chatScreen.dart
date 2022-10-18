import 'package:chatappui/Widgets/chatTiles.dart';
import 'package:chatappui/Widgets/divider.dart';
import 'package:chatappui/Widgets/whatsappTab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'whatsappdata.dart';

Data data = Data();

class ChatScreen extends StatelessWidget {
  static const String id = "ChatScreen";
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff075e54),
        title: Text(
          "Whatsapp",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 28,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.ellipsis_vertical,
                size: 26,
              ))
        ],
        bottom: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff075e54),
          leading: Container(
            child: Icon(
              Icons.camera_alt,
              color: Colors.white.withOpacity(0.5),
              size: 20,
            ),
          ),
          actions: [
            WhatsappTabs(
                labal: 'CHATS',
                fun: () {
                  Navigator.pushNamed(context, ChatScreen.id);
                }),
            WhatsappTabs(
                labal: 'STATUS',
                fun: () {
                  Navigator.pushNamed(context, ChatScreen.id);
                }),
            WhatsappTabs(
                labal: 'CALL',
                fun: () {
                  Navigator.pushNamed(context, ChatScreen.id);
                })
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.message),
            backgroundColor: Color(0xff075e54),
          ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ChatTile(
              name: data.chats.values.elementAt(index).elementAt(0),
              img: data.chats.values.elementAt(index).elementAt(1),
              msg: data.chats.values.elementAt(index).elementAt(2),
              time: data.chats.values.elementAt(index).elementAt(3)),
          separatorBuilder: (context, index) => Suprator(),
          itemCount: data.chats.length),
    );
  }
}
