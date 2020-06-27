import 'package:flutter/material.dart';
import 'package:hope19/Quote/part1.dart';
import 'package:hope19/widgets/card.dart';
import 'package:swipe_stack/swipe_stack.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _cards() {
    return SwipeStack(
      children: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((int index) {
        return SwiperItem(builder: (SwiperPosition position, double progress) {
          return CardWidget(text: index.toString());
        });
      }).toList(),
      visibleCount: 3,
      stackFrom: StackFrom.Top,
      translationInterval: 20,
      scaleInterval: 0.04,
      onEnd: () => debugPrint("onEnd"),
      onSwipe: (int index, SwiperPosition position) =>
          debugPrint("onSwipe $index $position"),
      onRewind: (int index, SwiperPosition position) =>
          debugPrint("onRewind $index $position"),
    );
  }

  Widget _button() {
    return RaisedButton(
      onPressed: () {
        fetch_forismatic();
      },
      child: Text("click me"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          _button(),
          _cards(),
        ],
      )),
    );
  }
}
