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
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          child: Text("Item $text",
              style: TextStyle(color: Colors.black, fontSize: 20)),
        ));
  }
}
