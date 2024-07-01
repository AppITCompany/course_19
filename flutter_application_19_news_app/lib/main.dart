import 'package:flutter/material.dart';
import 'package:flutter_application_19_news_app/home/home_page.dart';
import 'package:flutter_application_19_news_app/theme/app_colors.dart';

/*
1) chagylgan
2) chagylgan - jaan
3) kar
4) koop kar
5) sunny - kar
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.orangeGradient,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
