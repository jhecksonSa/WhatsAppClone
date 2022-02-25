import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TopTabs extends StatelessWidget {
  Widget param;

  TopTabs(this.param, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: param,
        height: 30,
        alignment: Alignment.center);
  }
}
