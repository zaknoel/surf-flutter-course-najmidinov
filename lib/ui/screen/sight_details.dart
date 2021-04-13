import 'package:flutter/material.dart';
import 'package:places/functions/constants.dart';

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
            DetailPhoto(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Пряности и радости',
                    style: kDetailTitle,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Text('ресторан', style: kDetailType),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'закрыто до 09:00',
                        style: kDetailType.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff7C7E92),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Пряный вкус радостной жизни вместе с шеф-поваром Изо Дзандзава, благодаря которой у гостей ресторана есть возможность выбирать из двух направлений: европейского и восточного',
                    style: kDetailType.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Color(0xff3B3E5B),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  RouteButton(),
                  SizedBox(
                    height: 24,
                  ),
                  Divider(),
                  SizedBox(
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
                style: kDetailType.copyWith(
                    fontWeight: FontWeight.w400, color: Color(0xff7C7E9256)),
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
                style: kDetailType.copyWith(
                  fontWeight: FontWeight.w400,
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

class RouteButton extends StatelessWidget {
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
          SizedBox(
            width: 10,
          ),
          Text(
            'построить маршрут'.toUpperCase(),
            style: kDetailType.copyWith(
              fontSize: 14,
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
