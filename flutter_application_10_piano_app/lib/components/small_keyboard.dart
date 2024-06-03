import 'package:flutter/material.dart';

class SmappKeyboard extends StatelessWidget {
  const SmappKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SmallKeyboardItem(),
        SmallKeyboardItem(),
        SmallKeyboardItem(),
        SmallKeyboardItem(),
        SmallKeyboardItem(),
        SmallKeyboardItem(),
        SmallKeyboardItem(),
      ],
    );
  }
}

class SmallKeyboardItem extends StatelessWidget {
  const SmallKeyboardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Row(
          children: [
            SmallWhiteButton(),
            SmallWhiteButton(),
            SmallWhiteButton(),
            SmallWhiteButton(),
            SmallWhiteButton(),
            SmallWhiteButton(),
            SmallWhiteButton(),
          ],
        ),
        Row(
          children: [
            SizedBox(width: 12),
            SmallBlackButton(),
            SizedBox(width: 4),
            SmallBlackButton(),
            SizedBox(width: 23),
            SmallBlackButton(),
            SizedBox(width: 4.5),
            SmallBlackButton(),
            SizedBox(width: 4.5),
            SmallBlackButton(),
          ],
        ),
      ],
    );
  }
}

class SmallWhiteButton extends StatelessWidget {
  const SmallWhiteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 17,
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 1),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(4),
          bottomRight: Radius.circular(4),
        ),
      ),
    );
  }
}

class SmallBlackButton extends StatelessWidget {
  const SmallBlackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12.7,
      height: 25,
      margin: const EdgeInsets.symmetric(horizontal: 1),
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(4),
          bottomRight: Radius.circular(4),
        ),
      ),
    );
  }
}
