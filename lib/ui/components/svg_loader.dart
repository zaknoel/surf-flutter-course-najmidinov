import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

SvgPicture svgLoader(filename, [title = "", color]) {
  String heartIcon = 'assets/icons/$filename.svg';
  return SvgPicture.asset(
    heartIcon,
    semanticsLabel: title,
    color: color,
    placeholderBuilder: (BuildContext context) => Container(
        padding: const EdgeInsets.all(30.0),
        child: const CircularProgressIndicator()),
  );
}
