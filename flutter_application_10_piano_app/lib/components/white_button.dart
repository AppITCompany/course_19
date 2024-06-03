import 'package:flutter/material.dart';

class WhiteButton extends StatelessWidget {
  const WhiteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.5),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shadowColor: Colors.black,
          elevation: 5,
          fixedSize: Size(
            80,
            MediaQuery.of(context).size.height * 0.70,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
        ),
        child: const SizedBox(),
      ),
    );
  }
}
