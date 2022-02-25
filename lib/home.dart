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
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
            bottom: TabBar(
                labelPadding: const EdgeInsets.only(left: 10),
                indicatorWeight: 3,
                indicatorColor: Colors.green.shade800,
                tabs: [
                  TopTabs(const Icon(Icons.camera_alt)),
                  TopTabs(const Text('CONVERSAS')),
                  TopTabs(const Text('STATUS')),
                  TopTabs(const Text('CHAMADAS')),
                ]),
          ),
          body: const TabBarView(children: [
            Text('tab 1'),
            Text('tab 2'),
            Text('tab 3'),
            Text('tab 3'),
          ]),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green.shade800,
            onPressed: () {},
            child: Icon(Icons.message),
          )
        ),
    );
  }
}
