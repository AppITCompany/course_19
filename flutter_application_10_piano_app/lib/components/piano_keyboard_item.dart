import 'package:flutter/material.dart';

import 'black_button.dart';
import 'white_button.dart';

class PianoKeyboardItem extends StatelessWidget {
  const PianoKeyboardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Row(
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
            SizedBox(width: MediaQuery.of(context).size.width * 0.053),
            const BlackButton(),
            SizedBox(width: MediaQuery.of(context).size.width * 0.013),
            const BlackButton(),
            SizedBox(width: MediaQuery.of(context).size.width * 0.103),
            const BlackButton(),
            SizedBox(width: MediaQuery.of(context).size.width * 0.0132),
            const BlackButton(),
            SizedBox(width: MediaQuery.of(context).size.width * 0.0134),
            const BlackButton(),
          ],
        ),
      ],
    );
  }
}
