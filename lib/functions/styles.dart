import 'package:flutter/material.dart';

const TextStyle commonStyle = TextStyle(
  fontStyle: FontStyle.normal,
  fontFamily: "Roboto",
  fontWeight: FontWeight.w400,
  fontSize: 14,
);

//list
TextStyle listHeadStyle = commonStyle.copyWith(
  fontWeight: FontWeight.w700,
  fontSize: 32,
);

TextStyle listTitleStyle = commonStyle.copyWith(
  fontWeight: FontWeight.w500,
  fontSize: 16,
  height: 1.3,
);

TextStyle listDescStyle = commonStyle.copyWith(
  color: Color(0xff7C7E92),
);

TextStyle listPlaceTypeStyle = commonStyle.copyWith(
  color: Colors.white,
  fontWeight: FontWeight.w700,
);

///detail
TextStyle detailTitleStyle = commonStyle.copyWith(
  fontWeight: FontWeight.w700,
  fontSize: 24,
  color: Color(0xff3B3E5B),
);
TextStyle detailPlaceTypeStyle = commonStyle.copyWith(
  fontWeight: FontWeight.w700,
  color: Color(0xff3B3E5B),
);

///favourite screen
TextStyle favTitle = commonStyle.copyWith(
  fontWeight: FontWeight.w500,
  fontSize: 18,
);
