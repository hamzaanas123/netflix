import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

class VedioListItem extends StatelessWidget {
  final int index;
  const VedioListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.accents[index % Colors.accents.length]),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.volume_off, color: kWhiteColor, size: 30),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          "https://media.themoviedb.org/t/p/w600_and_h900_bestv2/jDuKIccxR0lsdWlYuWiu03hkwnN.jpg",
                        ),
                      ),
                    ),
                    VedioActionWidget(icon: Icons.emoji_emotions, title: "LOL"),

                    VedioActionWidget(icon: Icons.share, title: "Share"),

                    VedioActionWidget(icon: Icons.play_arrow, title: "My List"),
                    VedioActionWidget(icon: Icons.share, title: "Play"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VedioActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VedioActionWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(icon, color: kWhiteColor, size: 30),
          Text(title, style: TextStyle(color: kWhiteColor, fontSize: 16)),
        ],
      ),
    );
  }
}
