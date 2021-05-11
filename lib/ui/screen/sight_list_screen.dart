import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/components/bottom_nav.dart';
import 'package:places/ui/components/custom_appbar.dart';
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
      appBar: const MyCustomAppBar(),
      bottomNavigationBar: const BottomNavBar(selectedIndex: 0),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child:
              Column(children: mocks.map((item) => SightCard(item)).toList()),
        ),
      ),
    );
  }
}
