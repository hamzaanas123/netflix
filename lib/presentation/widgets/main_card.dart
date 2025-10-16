import 'package:flutter/material.dart';

import '../../core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 130,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        image: DecorationImage(
          image: NetworkImage(
            "https://media.themoviedb.org/t/p/w600_and_h900_bestv2/jDuKIccxR0lsdWlYuWiu03hkwnN.jpg",
          ),
        ),
      ),
    );
  }
}
