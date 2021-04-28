import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

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
        margin: EdgeInsets.only(bottom: 24),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 96,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ImageLoader(item.url),
                    Positioned(
                      top: 16,
                      left: 16,
                      child: Text(
                        typeNames[item.type],
                        style: listPlaceTypeStyle,
                      ),
                    ),
                    Positioned(
                      top: 22,
                      right: 22,
                      child: Container(
                        height: 22,
                        width: 22,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: Theme.of(context).textTheme.subtitle1,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      item.details,
                      style: listDescStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )
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
