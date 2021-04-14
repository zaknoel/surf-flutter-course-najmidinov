import 'package:flutter/material.dart';
import 'package:places/functions/styles.dart';

class RouteButton extends StatelessWidget {
  const RouteButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: EdgeInsets.all(15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.green,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 15,
            width: 15,
            color: Colors.red,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            'построить маршрут'.toUpperCase(),
            style: detailPlaceTypeStyle.copyWith(
              letterSpacing: 0.3,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
