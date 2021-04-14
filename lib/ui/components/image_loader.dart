import 'package:flutter/material.dart';
import 'package:places/functions/constants.dart';

class ImageLoader extends StatelessWidget {
  final String url;
  const ImageLoader(this.url);
  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;

        return Center(
          child: CircularProgressIndicator(
            backgroundColor: kYellowColor,
            strokeWidth: 5.0,
            valueColor: AlwaysStoppedAnimation(kGreenColor),
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes
                : null,
          ),
        );
        // You can use LinearProgressIndicator or CircularProgressIndicator instead
      },
      errorBuilder: (context, error, stackTrace) =>
          Center(child: Text('Cannot load image, sorry!')),
    );
  }
}
