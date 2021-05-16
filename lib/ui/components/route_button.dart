import 'package:flutter/material.dart';
import 'package:places/functions/styles.dart';
import 'package:places/ui/components/svg_loader.dart';

class RouteButton extends StatelessWidget {
  const RouteButton();
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(height: 48),
      child: ElevatedButton(
        onPressed: () {
          print('Route button pressed!');
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
            padding: MaterialStateProperty.all(EdgeInsets.all(15)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: Colors.green)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            svgLoader('route', 'Route'),
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
      ),
    );
  }
}
