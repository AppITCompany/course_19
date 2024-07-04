import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:flutter_application_19_news_app/theme/app_text_styles.dart';

class DegreeWidget extends StatelessWidget {
  const DegreeWidget({
    required this.iconPath,
    required this.degree,
    required this.degreeStatus,
    super.key,
  });

  final String iconPath;
  final String degree;
  final String degreeStatus;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset(
          iconPath,
          height: 230,
        ),
        Column(
          children: [
            Badge(
              smallSize: 30,
              largeSize: 30,
              label: SvgPicture.asset(
                'assets/icons/degree.svg',
                width: 30,
              ),
              padding: const EdgeInsets.only(left: 30),
              backgroundColor: Colors.transparent,
              child: Text(
                degree,
                style: AppTextStyles.size86w700,
              ),
            ),
            Text(
              degreeStatus,
              style: AppTextStyles.size28w400,
            ),
          ],
        ),
        const Spacer(),
        const SizedBox(width: 16),
      ],
    );
  }
}
