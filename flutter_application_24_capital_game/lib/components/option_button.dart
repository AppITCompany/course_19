import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({
    required this.optionName,
    required this.optionText,
    this.onPressed,
    super.key,
  });

  final String optionName;
  final String optionText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            fixedSize: const Size.fromWidth(double.maxFinite),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Row(
            children: [
              Text(
                '$optionName)',
                style: const TextStyle(fontSize: 22),
              ),
              const Spacer(),
              Text(
                optionText,
                style: const TextStyle(fontSize: 22),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
