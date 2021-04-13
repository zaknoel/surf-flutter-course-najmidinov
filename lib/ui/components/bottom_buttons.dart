import 'package:flutter/material.dart';
import 'package:places/functions/styles.dart';

class BottomButtons extends StatelessWidget {
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
              SizedBox(
                width: 9,
              ),
              Text(
                'Запланировать',
                style:
                    detailPlaceTypeStyle.copyWith(color: Color(0xff7C7E9256)),
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
              SizedBox(
                width: 9,
              ),
              Text(
                'В Избранное',
                style: detailPlaceTypeStyle.copyWith(
                  color: Color(0xff3B3E5B),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
