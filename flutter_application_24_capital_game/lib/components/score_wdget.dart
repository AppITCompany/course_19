import 'package:flutter/material.dart';

class ScoreWdget extends StatelessWidget {
  const ScoreWdget(this.score, {super.key});

  final String score;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            const Icon(
              Icons.lightbulb,
              color: Colors.orangeAccent,
            ),
            Text(
              score,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(width: 4),
          ],
        ),
      ),
    );
  }
}
