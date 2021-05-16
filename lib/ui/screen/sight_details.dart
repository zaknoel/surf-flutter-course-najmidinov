import 'package:flutter/material.dart';
import 'package:places/functions/styles.dart';
import 'package:places/ui/components/bottom_buttons.dart';
import 'package:places/ui/components/bottom_nav.dart';
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
      bottomNavigationBar: const BottomNavBar(selectedIndex: 0),
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
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Text('ресторан',
                          style: Theme.of(context).textTheme.headline4),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'закрыто до 09:00',
                        style: detailPlaceTypeStyle.copyWith(
                            color: Color(0xff7C7E92),
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Пряный вкус радостной жизни вместе с шеф-поваром Изо Дзандзава, благодаря которой у гостей ресторана есть возможность выбирать из двух направлений: европейского и восточного',
                    style: Theme.of(context).textTheme.headline5,
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
