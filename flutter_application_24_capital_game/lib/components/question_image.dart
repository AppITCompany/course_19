import 'package:flutter/material.dart';

class QuestionImage extends StatelessWidget {
  const QuestionImage(this.url, {super.key});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Image.network(url),
      ),
    );
  }
}
