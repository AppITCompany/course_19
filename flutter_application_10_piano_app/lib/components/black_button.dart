import 'package:flutter/material.dart';

class BlackButton extends StatelessWidget {
  const BlackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.5),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          elevation: 5,
          fixedSize: Size(
            60,
            MediaQuery.of(context).size.height * 0.45,
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
