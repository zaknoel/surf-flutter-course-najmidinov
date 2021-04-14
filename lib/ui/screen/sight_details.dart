import 'package:flutter/material.dart';
import 'package:places/functions/styles.dart';
import 'package:places/ui/components/bottom_buttons.dart';
import 'package:places/ui/components/detail_photo.dart';
import 'package:places/ui/components/route_button.dart';

class SightDetails extends StatefulWidget {
  @override
  _SightDetailsState createState() => _SightDetailsState();
}

class _SightDetailsState extends State<SightDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const DetailPhoto(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Пряности и радости',
                    style: detailTitleStyle,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Text('ресторан', style: detailPlaceTypeStyle),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'закрыто до 09:00',
                        style: detailPlaceTypeStyle.copyWith(
                          color: Color(0xff7C7E92),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Пряный вкус радостной жизни вместе с шеф-поваром Изо Дзандзава, благодаря которой у гостей ресторана есть возможность выбирать из двух направлений: европейского и восточного',
                    style: detailPlaceTypeStyle.copyWith(
                      color: Color(0xff3B3E5B),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  RouteButton(),
                  const SizedBox(
                    height: 24,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 8,
                  ),
                  BottomButtons()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
