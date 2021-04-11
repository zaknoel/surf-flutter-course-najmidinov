import 'package:flutter/material.dart';

const TextStyle kTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 32,
  fontStyle: FontStyle.normal,
  fontFamily: "Roboto",
  fontWeight: FontWeight.w700,
);

class SightListScreen extends StatefulWidget {
  SightListScreen({Key key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 150,
        title: const Text(
          "Список\nинтересных мест",
          style: kTextStyle,
          textAlign: TextAlign.start,
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: Container(),
    );
  }
}
