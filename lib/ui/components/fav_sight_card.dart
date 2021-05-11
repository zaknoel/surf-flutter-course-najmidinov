import 'package:flutter/material.dart';
import 'package:places/functions/styles.dart';
import 'package:places/ui/components/image_loader.dart';

class FavSightCard extends StatelessWidget {
  const FavSightCard({
    Key key,
  }) : super(key: key);

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
                    ImageLoader(
                        'https://www.inexhibit.com/wp-content/uploads/2014/04/British-Museum-London-exterior-870x580.jpg'),
                    Positioned(
                      top: 16,
                      left: 16,
                      child: Text(
                        'ресторан',
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
                    Positioned(
                      top: 22,
                      right: 57,
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
                      'Пряности и радости ',
                      style: Theme.of(context).textTheme.subtitle1,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Запланировано на 12 окт. 2020',
                      style: commonStyle.copyWith(
                        color: Color(0xff4CAF50),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      'закрыто до 09:00',
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
