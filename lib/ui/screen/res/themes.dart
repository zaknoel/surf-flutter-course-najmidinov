import 'package:flutter/material.dart';
import 'package:places/functions/styles.dart';

ThemeData darkTheme = ThemeData(
  backgroundColor: Color(0xff21222C),
  scaffoldBackgroundColor: Color(0xff21222C),
  cardColor: Color(0xff1A1A20),
  canvasColor: Color(0xff7C7E928F),
  secondaryHeaderColor: Colors.white,
  fontFamily: "Roboto",
  iconTheme: IconThemeData(color: Colors.white),
  textTheme: TextTheme(
    bodyText2: commonStyle,
    subtitle1: listTitleStyle.copyWith(color: Colors.white),
    subtitle2: detailTitleStyle.copyWith(color: Colors.white),
    headline4: detailPlaceTypeStyle.copyWith(
      color: Color(0xff7C7E92),
    ),
    headline5: detailPlaceTypeStyle.copyWith(
      color: Colors.white,
      fontWeight: FontWeight.w400,
    ),
  ),
  appBarTheme: AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Color(0xff21222C),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Colors.white,
      ),
    ),
  ),
  tabBarTheme: TabBarTheme(
    indicator: BoxDecoration(
      borderRadius: BorderRadius.circular(
        40,
      ),
      color: Colors.white,
    ),
    labelColor: Color(0xff3B3E5B),
    unselectedLabelColor: Color(0xff7C7E928F),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: Colors.white,
    backgroundColor: Color(0xff21222C),
    elevation: 0,
    unselectedItemColor: Color(0xff7C7E928F),
  ),
);

const Color lightTextColor = Color(0xff3B3E5B);
ThemeData lightTheme = ThemeData(
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  cardColor: Color(0xffF5F5F5),
  canvasColor: Color(0xff7C7E928F),
  secondaryHeaderColor: lightTextColor,
  fontFamily: "Roboto",
  iconTheme: IconThemeData(color: Color(0xff252849)),
  textTheme: TextTheme(
    bodyText2: commonStyle,
    subtitle1: listTitleStyle.copyWith(color: lightTextColor),
    subtitle2: detailTitleStyle.copyWith(color: lightTextColor),
    headline4: detailPlaceTypeStyle.copyWith(
      color: Color(0xff7C7E92),
    ),
    headline5: detailPlaceTypeStyle.copyWith(
      color: lightTextColor,
      fontWeight: FontWeight.w400,
    ),
  ),
  appBarTheme: AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.white,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: lightTextColor,
      ),
    ),
  ),
  tabBarTheme: TabBarTheme(
    indicator: BoxDecoration(
      borderRadius: BorderRadius.circular(
        40,
      ),
      color: Color(0xff3B3E5B),
    ),
    labelColor: Colors.white,
    unselectedLabelColor: Color(0xff7C7E928F),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: Color(0xff252849),
    backgroundColor: Colors.white,
    elevation: 0,
    unselectedItemColor: Color(0xff7C7E928F),
  ),
);
