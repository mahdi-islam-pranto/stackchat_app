import 'package:flutter/material.dart';
import 'package:stackchat/colors/colors.dart';

import 'package:stackchat/widgets/chat_each.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: iconBackColor,
          foregroundColor: textColor,
          onPressed: () {},
          child: const Icon(Icons.message),
        ),
      ),
      body: const Column(
        children: [
          // each chat row
          Chat(),
          Divider(
              indent: 70,
              endIndent: 10,
              height: 0,
              color: Color.fromARGB(255, 32, 48, 58)),
          Chat(),
          Divider(
              indent: 70,
              endIndent: 10,
              height: 0,
              color: Color.fromARGB(255, 32, 48, 58)),
          Chat(),
          Divider(
              indent: 70,
              endIndent: 10,
              height: 0,
              color: Color.fromARGB(255, 32, 48, 58)),
          Chat(),
          Divider(
              indent: 70,
              endIndent: 10,
              height: 0,
              color: Color.fromARGB(255, 32, 48, 58)),
          Chat(),
        ],
      ),
    );
  }
}
