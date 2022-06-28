import 'package:flutter/material.dart';

import '../data/chat.dart';

class ChatBody extends StatelessWidget {
  final Chat chat;
  ChatBody({required this.chat, Key? key}) : super(key: key);

  Widget badgeCotainer() {
    return Container(
      width: 20,
      height: 20,
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      ),
      child: Text(
        chat.coutMsg > 0 ? '${chat.coutMsg}' : '',
        textAlign: TextAlign.center,
      ),
    );
  }

  final List<Widget> _listRowWidget = [];

  List<Widget> listRowWidget() {
    if (chat.isPin) {
      _listRowWidget.add(
        Transform.rotate(
          angle: 45,
          child: const Icon(Icons.push_pin),
        ),
      );
    }

    if (chat.coutMsg > 0) {
      _listRowWidget.add(badgeCotainer());
    }

    return _listRowWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 2,
        vertical: 5,
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(chat.avatar),
          child: chat.avatar.isEmpty
              ? const Icon(Icons.person_outline_outlined)
              : null,
        ),
        title: Text(chat.contactName),
        subtitle: Text(chat.description),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(chat.dateMsg),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: listRowWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
