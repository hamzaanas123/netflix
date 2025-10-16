import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/search/widgets/title.dart';

const imageUrl =
    "https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/ScaVfT5IkwVC3Edhmxqyl0GbK0.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Top Searches",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kHeight,

        Expanded(
          child: ListView.separated(
            itemBuilder: (ctx, index) => TopSearchItemTail(),
            separatorBuilder: (ctx, index) => kHeight20,
            itemCount: 10,
            shrinkWrap: true,
          ),
        ),
      ],
    );
  }
}

class TopSearchItemTail extends StatelessWidget {
  const TopSearchItemTail({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 70,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        kWidth,
        Expanded(child: SearchTextTitle(title: "Top Searches")),
        CircleAvatar(
          backgroundColor: kWhiteColor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kBlackColor,
            radius: 23,
            child: Icon(CupertinoIcons.play_fill, color: kWhiteColor),
          ),
        ),
      ],
    );
  }
}
