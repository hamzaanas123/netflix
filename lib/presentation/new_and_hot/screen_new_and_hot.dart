import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/everyones_watching_widget.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/video_widget.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            title: Text(
              "New & Hot",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            actions: [
              Icon(Icons.cast, color: Colors.white, size: 30),
              kWidth,
              Container(width: 30, height: 20, color: Colors.blue),
              kWidth,
            ],
            bottom: TabBar(
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: kWhiteColor,
              indicator: BoxDecoration(
                color: kWhiteColor,
                borderRadius: kRadius30,
              ),
              indicatorColor: Colors.transparent,
              labelColor: kBlackColor,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              tabs: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Tab(text: "🍿 Coming Soon"),
                  ),
                ),
                Tab(text: "👀 Everyone's watching"),
              ],
            ),
          ),
        ),

        body: TabBarView(
          children: [_buildComingSoon(), _buildEveryOnesWatching()],
        ),
      ),
    );
  }

  Widget _buildEveryOnesWatching() {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) =>
          EveryOnesWatcingWidget(),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (BuildContext context, index) => ComingSoonWiget(),
    );
  }
}
