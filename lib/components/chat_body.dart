import 'package:flutter/material.dart';

import '../data/chat.dart';

class ChatBody extends StatelessWidget {
  final Chat chat;
  const ChatBody({required this.chat, Key? key}) : super(key: key);

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
      child: Center(
        child: Text(
          chat.coutMsg > 0 ? '${chat.coutMsg}' : '',
          style: const TextStyle(
              fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  List<Widget> listRowWidget() {
    final List<Widget> listWidget = [];

    if (chat.isPin) {
      listWidget.add(
        Transform.rotate(
          angle: 45,
          child: const Icon(
            Icons.push_pin,
            color: Colors.grey,
            size: 20,
          ),
        ),
      );
    }

    if (chat.coutMsg > 0) {
      if (listWidget.isNotEmpty) {
        listWidget.add(const SizedBox(
          width: 5,
        ));
      }

      listWidget.add(badgeCotainer());
    }

    return listWidget;
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
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: listRowWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
