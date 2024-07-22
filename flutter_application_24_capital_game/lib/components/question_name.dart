import 'package:flutter/material.dart';

class QuestionName extends StatelessWidget {
  const QuestionName(this.value, {super.key});

  final String value;

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: Theme.of(context).textTheme.displayMedium,
    );
  }
}
