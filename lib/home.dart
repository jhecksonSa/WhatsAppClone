import 'package:flutter/material.dart';
import './components/topTabs.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
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
                labelPadding: const EdgeInsets.only(left: 10),
                indicatorWeight: 3,
                indicatorColor: Colors.green.shade800,
                tabs: [
                  TopTabs(param: const Icon(Icons.camera_alt)),
                  TopTabs(param: const Text('CONVERSAS')),
                  TopTabs(param: const Text('STATUS')),
                  TopTabs(param: const Text('CHAMADAS')),
                ]),
          ),
          body: const TabBarView(children: [
            Icon(Icons.camera_alt, size: 200, color: Colors.amber),
            Icon(Icons.sms, size: 200),
            Icon(Icons.update, size: 200),
            Icon(Icons.call, size: 200),
          ]),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green.shade800,
            onPressed: () {
              print('Ok');
            },
            child: const Icon(Icons.message),
          )),
    );
  }
}
