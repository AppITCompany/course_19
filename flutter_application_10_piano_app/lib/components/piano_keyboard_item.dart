import 'package:flutter/material.dart';

import 'black_button.dart';
import 'white_button.dart';

class PianoKeyboardItem extends StatelessWidget {
  const PianoKeyboardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Row(
          children: [
            WhiteButton(),
            WhiteButton(),
            WhiteButton(),
            WhiteButton(),
            WhiteButton(),
            WhiteButton(),
            WhiteButton(),
          ],
        ),
        Row(
          children: [
            SizedBox(width: 52),
            BlackButton(),
            SizedBox(width: 15),
            BlackButton(),
            SizedBox(width: 100),
            BlackButton(),
            SizedBox(width: 15),
            BlackButton(),
            SizedBox(width: 15),
            BlackButton(),
          ],
        ),
      ],
    );
  }
}
