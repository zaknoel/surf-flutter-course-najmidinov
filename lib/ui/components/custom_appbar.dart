import 'package:flutter/material.dart';
import 'package:places/functions/constants.dart';
import 'package:places/functions/styles.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 64, left: 16, right: 16),
      child: RichText(
        text: TextSpan(style: listHeadStyle, children: [
          TextSpan(text: 'С', style: TextStyle(color: kGreenColor)),
          TextSpan(text: 'писок\n'),
          TextSpan(text: 'и', style: TextStyle(color: kYellowColor)),
          TextSpan(text: 'нтересных мест')
        ]),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(136);
}
