import 'package:flutter/material.dart';
import 'package:stackchat/colors/colors.dart';
import 'package:stackchat/widgets/chat_each.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // each chat row
        Chat(),
        Chat(),
        Chat(),
        Chat(),
        Chat(),
      ],
    );
  }
}
