import 'package:flutter/material.dart';

import 'package:places/functions/styles.dart';
import 'package:places/ui/components/bottom_nav.dart';
import 'package:places/ui/components/fav_sight_card.dart';

class VisitingScreen extends StatelessWidget {
  const VisitingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Избранное',
            style: favTitle,
          ),
          automaticallyImplyLeading: false,
          elevation: 0,
          toolbarHeight: 132,
          centerTitle: true,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(52),
            child: Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 6, bottom: 14),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  //color: Colors.red,
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xffF5F5F5),
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      40,
                    ),
                    color: Color(0xff3B3E5B),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Color(0xff7C7E928F),
                  tabs: [
                    Tab(text: 'Хочу посетит'),
                    Tab(text: 'Посетил'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            FullTab(),
            EmptyTab(),
          ],
        ),
        bottomNavigationBar: const BottomNavBar(selectedIndex: 1),
      ),
    );
  }
}

class EmptyTab extends StatelessWidget {
  const EmptyTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.photo_camera,
            color: Color(0xff7C7E928F),
            size: 50,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Пусто',
            style: commonStyle.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color(0xff7C7E928F)),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Отмечайте понравившиеся\n места и они появиятся здесь.',
            style: commonStyle.copyWith(color: Color(0xff7C7E928F)),
          )
        ],
      ),
    );
  }
}

class FullTab extends StatelessWidget {
  const FullTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FavSightCard(),
          FavSightCard(),
        ],
      ),
    );
  }
}
