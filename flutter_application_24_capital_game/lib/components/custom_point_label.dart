import 'package:flutter/material.dart';

class CustomPointLabel extends StatelessWidget {
  const CustomPointLabel({
    required this.label,
    this.onTap,
    super.key,
  });

  final void Function()? onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: const Color(0xff60B8F6).withOpacity(0.6),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
