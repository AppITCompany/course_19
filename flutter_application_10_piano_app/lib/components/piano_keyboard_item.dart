import 'package:flutter/material.dart';

import 'black_button.dart';
import 'white_button.dart';

// -1 (3)
//  0 (12)
// 1 (12)
// ...
// 7 (2)

class PianoKeyboardItem extends StatelessWidget {
  const PianoKeyboardItem({
    required this.index,
    super.key,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            WhiteButton(text: 'C$index'),
            WhiteButton(text: 'D$index'),
            WhiteButton(text: 'E$index'),
            WhiteButton(text: 'F$index'),
            WhiteButton(text: 'G$index'),
            WhiteButton(text: 'A$index'),
            WhiteButton(text: 'B$index'),
          ],
        ),
        Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.053),
            BlackButton(text: 'C♯/D♭$index'),
            SizedBox(width: MediaQuery.of(context).size.width * 0.013),
            BlackButton(text: 'D♯/E♭$index'),
            SizedBox(width: MediaQuery.of(context).size.width * 0.103),
            BlackButton(text: 'F♯/G♭$index'),
            SizedBox(width: MediaQuery.of(context).size.width * 0.0132),
            BlackButton(text: 'G♯/A♭$index'),
            SizedBox(width: MediaQuery.of(context).size.width * 0.0134),
            BlackButton(text: 'A♯/B♭$index'),
          ],
        ),
      ],
    );
  }
}
