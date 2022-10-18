import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String img;
  final String msg;
  final String time;

  ChatTile(
      {required this.name,
      required this.img,
      required this.msg,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: img != null
          ? Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(img),
              ),
            )
          : Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.account_circle,
                size: 55,
                color: Colors.grey.shade500,
              ),
            ),
      minVerticalPadding: 0,
      horizontalTitleGap: 5,
      trailing: Padding(
        padding: EdgeInsets.all(8),
        child: Text(
          time,
          style: TextStyle(color: Colors.grey.shade500),
        ),
      ),
      title: Text(
        name,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 19,
        ),
      ),
      subtitle: Text(
        msg,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 15, color: Colors.grey.shade500),
      ),
    );
  }
}
