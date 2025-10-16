import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/background_cards.dart';
import 'package:netflix_app/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_app/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    BackgrondCards(),
                    MainTitleCard(title: "Released in the past year"),
                    kHeight,
                    MainTitleCard(title: "Trending Now"),
                    kHeight,

                    NumberTitleCard(),
                    kHeight,

                    MainTitleCard(title: "Tense Dramas"),
                    kHeight,

                    MainTitleCard(title: "South Indian Cinema"),
                  ],
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                        duration: Duration(microseconds: 1000),
                        width: double.infinity,
                        height: 90,
                        color: Colors.black.withOpacity(0.3),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  "https://cdn.iconscout.com/icon/free/png-512/free-netflix-icon-svg-download-png-12706371.png?f=webp&w=512",
                                  width: 60,
                                  height: 60,
                                ),
                                Spacer(),
                                Icon(Icons.cast, color: Colors.white, size: 30),
                                kWidth,
                                Container(
                                  width: 30,
                                  height: 40,
                                  color: Colors.blue,
                                ),
                                kWidth,
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("TV Shows", style: kHomeTitleText),
                                  Text("Movies", style: kHomeTitleText),
                                  Text("Categories", style: kHomeTitleText),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    : kHeight,
              ],
            ),
          );
        },
      ),
    );
  }
}
