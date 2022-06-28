import 'package:flutter/widgets.dart';

import '../components/chat_body.dart';
import '../data/dammy_data.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: DammyData.ChatList.length,
      itemBuilder: (ctx, index) => ChatBody(
        chat: DammyData.ChatList[index],
      ),
    );
  }
}
