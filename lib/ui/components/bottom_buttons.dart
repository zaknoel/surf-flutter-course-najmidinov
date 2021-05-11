import 'package:flutter/material.dart';
import 'package:places/functions/styles.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 19,
                width: 22,
                color: Colors.red,
              ),
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
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 19,
                width: 22,
                color: Colors.red,
              ),
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
      ],
    );
  }
}
