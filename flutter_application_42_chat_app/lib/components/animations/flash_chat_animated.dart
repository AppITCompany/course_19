import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FlashChatAnimated extends StatelessWidget {
  const FlashChatAnimated({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/thunder.svg'),
        const SizedBox(width: 10),
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            WavyAnimatedText(
              'Flash Chat',
              textStyle: textTheme.displayLarge!.copyWith(
                letterSpacing: 3,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
