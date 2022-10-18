import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WhatsappTabs extends StatelessWidget {
  final String labal;
  final Function fun;
  WhatsappTabs({required this.labal, required this.fun});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
                color: labal == 'CHATS' ? Colors.white : Colors.transparent,
                width: 5)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: GestureDetector(
              onTap: () => fun,
              child: Text(
                labal,
                style: TextStyle(
                    fontSize: 14,
                    color: labal == 'CHATS'
                        ? Colors.white
                        : Color.fromARGB(0, 13, 13, 13).withOpacity(0.5)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
