import 'package:flutter/material.dart';
import 'package:flutter_application_24_capital_game/components/score_wdget.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    required this.score,
    required this.index,
    super.key,
  });

  final String score;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ScoreWdget(score),
        Text('$index'),
        const SizedBox(),
      ],
    );
  }
}
