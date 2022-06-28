import 'package:flutter/material.dart';

import 'components/top_tabs.dart';
import 'screen/calls_tabs_screen.dart';
import 'screen/chat_tabs_screen.dart';
import 'screen/status_tabs_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

Widget topTab({required Widget child}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TopTabs(
      param: child,
    ),
  );
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          title: const Text('WhatsApp Clone'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            )
          ],
          bottom: TabBar(
            labelPadding: const EdgeInsets.symmetric(horizontal: 5),
            indicatorWeight: 2,
            indicatorColor: Colors.green.shade800,
            tabs: [
              topTab(child: const Icon(Icons.camera_alt)),
              topTab(
                child: const Text(
                  'CONVERSAS',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              topTab(
                child: const Text(
                  'STATUS',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              topTab(
                child: const Text(
                  'CHAMADAS',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.camera_alt, size: 200),
            ChatScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green[500],
          onPressed: () {
            print('Ok');
          },
          child: const Icon(
            Icons.message,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
