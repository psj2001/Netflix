import 'package:flutter/material.dart';

import '../../core/constants.dart';
import 'custom_button_widget.dart';
import 'video_widget.dart';

class EveryoneWatchingWidget extends StatelessWidget {
  const EveryoneWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHight,
        Text(
          "Friends",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHight,
        Text(
          "This hit sitcom follows the merry misadventures of six 20-something pals as they navigate the pifalls of work,life and love in 1990s manhattan",
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        VideoWidget(),
        kHight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
              icon: Icons.telegram_rounded,
              title: "Share",
              iconSize: 35,
              textSize: 18,
            ),
            SizedBox(
              width: 20,
            ),
            CustomButtonWidget(
              icon: Icons.add,
              title: "My List ",
              iconSize: 35,
              textSize: 18,
            ),
            SizedBox(
              width: 20,
            ),
            CustomButtonWidget(
              icon: Icons.play_arrow,
              title: "Play ",
              iconSize: 35,
              textSize: 18,
            ),
            kWidth
          ],
        ),
      ],
    );
  }
}
