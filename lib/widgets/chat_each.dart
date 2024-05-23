import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12.0),
      child: Row(
        children: [
          // profile image
          CircleAvatar(
            radius: 25.0,
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYloKopOZ_oudmWTNK-xVmdVPxdKsgKniHbr8Vr0hk1g&s"),
          ),

          // name, msg
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Profile Name"),
                Text(
                  "Hello Good Morning",
                  style: TextStyle(color: Color(0xFF889397)),
                )
              ],
            ),
          ),
          // time
          Spacer(),

          Text("9:30 PM")
        ],
      ),
    );
  }
}
