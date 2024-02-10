import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF101D25),
      body: Column(
        children: [
          //top of the app
          Container(
            width: 411,
            height: 129,
            padding: EdgeInsets.only(top: 20),
            color: Colors.amber,
            child: Column(
              children: [
                // app logo and icons
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "StackChat",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          iconSize: 25,
                          icon: Icon(Icons.search),
                          onPressed: () {},
                        ),
                        IconButton(
                          iconSize: 25,
                          icon: Icon(Icons.more_vert),
                          onPressed: () {},
                        ),
                      ],
                    ))
                  ],
                ),
                const DefaultTabController(
                    initialIndex: 1,
                    animationDuration: Durations.short1,
                    length: 4,
                    child: TabBar(
                      tabs: [
                        Expanded(child: Tab(icon: Icon(Icons.camera_alt))),
                        Tab(
                          text: "CHATS",
                        ),
                        Tab(
                          text: "STATUS",
                        ),
                        Tab(
                          text: "CALLS",
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
