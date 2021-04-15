import 'package:flutter/material.dart';
import 'package:places/functions/constants.dart';
import 'package:places/ui/components/image_loader.dart';

class DetailPhoto extends StatelessWidget {
  const DetailPhoto();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 360,
          color: kGreyColor, //image
          child: ImageLoader(
              'https://www.inexhibit.com/wp-content/uploads/2014/04/British-Museum-London-exterior-870x580.jpg'),
        ),
        Positioned(
          top: 36,
          left: 16,
          child: Container(
            height: 32,
            width: 32,
            child: const Icon(
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
