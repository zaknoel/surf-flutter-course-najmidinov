import 'package:flutter/material.dart';

const TextStyle kTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 32,
  fontStyle: FontStyle.normal,
  fontFamily: "Roboto",
  fontWeight: FontWeight.w700,
);

const kGreenColor = Color(0xff4CAF50);
const kYellowColor = Color(0xffFCDD3D);

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
        title: RichText(
          text: TextSpan(style: kTextStyle, children: [
            TextSpan(text: 'С', style: TextStyle(color: kGreenColor)),
            TextSpan(text: 'писок\n'),
            TextSpan(text: 'и', style: TextStyle(color: kYellowColor)),
            TextSpan(text: 'нтересных мест')
          ]),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: Container(),
    );
  }
}
