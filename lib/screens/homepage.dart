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
      backgroundColor: Color(0xFF18252D),
      body: Column(
        children: [
          //top of the app
          Container(
            width: 411,
            height: 129,
            padding: const EdgeInsets.only(top: 20),
            color: const Color(0xFF232D36),
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
                          color: Colors.white,
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
                            color: Colors.white,
                            iconSize: 25,
                            icon: const Icon(Icons.camera_alt_outlined),
                            onPressed: () {},
                          ),
                          IconButton(
                            color: Colors.white,
                            iconSize: 25,
                            icon: const Icon(Icons.search),
                            onPressed: () {},
                          ),
                          IconButton(
                            color: Colors.white,
                            iconSize: 25,
                            icon: const Icon(Icons.more_vert),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const DefaultTabController(
                  initialIndex: 2,
                  length: 5,
                  child: TabBar(
                    indicatorColor: Color(0xFF9DA5AC),
                    labelColor: Color(0xFF9DA5AC),
                    tabs: [
                      Tab(icon: Icon(Icons.camera_alt_outlined)),
                      Tab(icon: Icon(Icons.group)),
                      Tab(text: "CHATS"),
                      Tab(text: "STATUS"),
                      Tab(text: "CALLS"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
