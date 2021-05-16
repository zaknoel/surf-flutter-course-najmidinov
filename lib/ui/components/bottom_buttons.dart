import 'package:flutter/material.dart';
import 'package:places/functions/styles.dart';
import 'package:places/ui/components/svg_loader.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              print('PLan button clicked');
            },
            style: noOverlayStyle,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                svgLoader('calendar', 'Plan', Theme.of(context).canvasColor),
                const SizedBox(
                  width: 9,
                ),
                Text(
                  'Запланировать',
                  style: detailPlaceTypeStyle.copyWith(
                      color: Theme.of(context).canvasColor,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              print('Wishlist button clicked');
            },
            style: noOverlayStyle,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                svgLoader('heart_org', 'Add to wishklist',
                    Theme.of(context).secondaryHeaderColor),
                const SizedBox(
                  width: 9,
                ),
                Text(
                  'В Избранное',
                  style: detailPlaceTypeStyle.copyWith(
                      color: Theme.of(context).secondaryHeaderColor,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
