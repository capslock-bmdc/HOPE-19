import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String text;

  CardWidget({this.text});

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 4,
        borderRadius: BorderRadius.all(Radius.circular(6)),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff2d384d),
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
        child: Center(
            child: Text("Item $text",
                style: TextStyle(color: Colors.black, fontSize: 20)),
          ),
        ));
  }
}
