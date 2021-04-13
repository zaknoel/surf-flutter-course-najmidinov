import 'package:flutter/material.dart';
import 'package:places/functions/constants.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';

class SightListScreen extends StatefulWidget {
  SightListScreen({Key key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child:
              Column(children: mocks.map((item) => SightCard(item)).toList()),
        ),
      ),
    );
  }
}
