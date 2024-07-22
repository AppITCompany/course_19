import 'package:flutter/material.dart';

class GameProcessIndicator extends StatelessWidget {
  const GameProcessIndicator(this.index, {super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: LinearProgressIndicator(
          value: index / 10,
          minHeight: 7,
        ),
      ),
    );
  }
}
