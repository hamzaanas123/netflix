import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button_widget.dart';

class BackgrondCards extends StatelessWidget {
  const BackgrondCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(kImage)),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButtonWidget(icon: Icons.add, title: "My List"),

                _playButton(),
                CustomButtonWidget(icon: Icons.info, title: "Info"),
              ],
            ),
          ),
        ),
      ],
    );
  }

  TextButton _playButton() {
    return TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(backgroundColor: WidgetStateProperty.all(kWhiteColor)),
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Text("Play", style: TextStyle(fontSize: 20, color: kBlackColor)),
      ),
      icon: Icon(Icons.play_arrow, size: 30, color: kBlackColor),
    );
  }
}
