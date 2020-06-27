import 'package:flutter/material.dart';
import 'Quote/part1.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    fetch_forismatic();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("home page"),
    );
  }
}
