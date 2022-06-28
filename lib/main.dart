import 'package:flutter/material.dart';

import './home.dart';
import './paletteColors.dart';

void main() {
  runApp(const WhatsAppClone());
}

class WhatsAppClone extends StatelessWidget {
  const WhatsAppClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: PaletteColors.customColors,
      ),
      home: const Home(title: 'WhatsApp Clone'),
    );
  }
}
