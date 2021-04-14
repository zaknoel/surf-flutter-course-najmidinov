import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/functions/constants.dart';
import 'package:places/functions/styles.dart';
import 'package:places/ui/components/image_loader.dart';

class SightCard extends StatelessWidget {
  final Sight item;
  const SightCard(this.item);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        height: 188,
        child: Column(
          children: [
            Container(
              height: 96,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: kGreyColor),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                //color: Colors.red[300],
              ),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: ImageLoader(item.url),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child:
                        Text(typeNames[item.type], style: listPlaceTypeStyle),
                  ),
                  Positioned(
                    top: 19,
                    right: 18,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red,
                      ),
                      height: 18,
                      width: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: kGreyColor),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: kGreyColor,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    Text(
                      item.name,
                      maxLines: 2,
                      style: listTitleStyle,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      item.details,
                      maxLines: 1,
                      style: listDescStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
