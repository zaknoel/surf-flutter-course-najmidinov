import 'package:flutter/material.dart';

class DetailPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 360,
          color: Colors.teal[700], //image
        ),
        Positioned(
          top: 36,
          left: 16,
          child: Container(
            height: 32,
            width: 32,
            child: Icon(
              Icons.arrow_back_ios_outlined,
              size: 14,
            ),
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
