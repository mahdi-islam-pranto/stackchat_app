import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  // tab controller
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
                // upper tab bar
                TabBar(
                  controller: _tabController,
                  indicatorColor: const Color(0xFF9DA5AC),
                  labelColor: const Color(0xFF9DA5AC),
                  tabs: const [
                    Tab(icon: Icon(Icons.camera_alt_outlined)),
                    Tab(text: "CHATS"),
                    Tab(text: "STATUS"),
                    Tab(text: "CALLS"),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                // Content for the "Camera" tab
                Center(child: Text('Camera Tab')),
                // Content for the "Chats" tab
                Center(child: Text('Chats Tab')),
                // Content for the "Status" tab
                Center(child: Text('Status Tab')),
                // Content for the "Calls" tab
                Center(child: Text('Calls Tab')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
