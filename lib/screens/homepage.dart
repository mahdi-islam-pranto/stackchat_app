import 'package:flutter/material.dart';
import 'package:stackchat/colors/colors.dart';
import 'package:stackchat/screens/all_chat_page.dart';

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
      initialIndex: 1,
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
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          //top of the app
          Container(
            width: 411,
            height: 129,
            padding: const EdgeInsets.only(top: 20),
            color: appHeadcontainerColor,
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
                          PopupMenuButton<String>(
                            color: Color(0xff313C42),
                            iconColor: textColor,
                            onSelected: (String result) {
                              // Handle the selection from the popup menu
                              print('Selected: $result');
                            },
                            itemBuilder: (BuildContext context) =>
                                <PopupMenuEntry<String>>[
                              PopupMenuItem<String>(
                                labelTextStyle: MaterialStatePropertyAll(
                                    TextStyle(color: textColor)),
                                value: 'Option 1',
                                child: const Text('New Group'),
                              ),
                              PopupMenuItem<String>(
                                labelTextStyle: MaterialStatePropertyAll(
                                    TextStyle(color: textColor)),
                                value: 'Option 1',
                                child: const Text('New Broadcast'),
                              ),
                              PopupMenuItem<String>(
                                labelTextStyle: MaterialStatePropertyAll(
                                    TextStyle(color: textColor)),
                                value: 'Option 1',
                                child: const Text('Starred Messages'),
                              ),
                              PopupMenuItem<String>(
                                labelTextStyle: MaterialStatePropertyAll(
                                    TextStyle(color: textColor)),
                                value: 'Option 1',
                                child: const Text('Settings'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // upper tab bar
                TabBar(
                  controller: _tabController,
                  indicatorColor: const Color(0xFF9DA5AC),
                  labelColor: const Color(0xFF9DA5AC),
                  tabs: const [
                    Tab(
                        icon: Icon(Icons.camera_alt_outlined),
                        iconMargin: EdgeInsets.all(0)),
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
                Center(
                    child: Text(
                  'Camera Tab',
                  style: TextStyle(color: Colors.white),
                )),
                // Content for the "Chats" tab
                ChatPage(),
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
