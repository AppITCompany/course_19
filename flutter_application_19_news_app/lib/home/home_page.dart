import 'package:flutter/material.dart';
import 'package:flutter_application_19_news_app/components/drawer_button.dart';
import 'package:flutter_application_19_news_app/components/search_icon_button.dart';
import 'package:flutter_application_19_news_app/theme/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldGradient(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Weather App'),
        centerTitle: true,
        leading: const SearchIconButton(),
        actions: const [
          CustomDrawerButton(),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}

class ScaffoldGradient extends StatelessWidget {
  const ScaffoldGradient({
    super.key,
    this.appBar,
    this.body,
  });

  final PreferredSizeWidget? appBar;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.2, 0.7],
          colors: [
            AppColors.whiteGradient,
            AppColors.orangeGradient,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: appBar,
        body: body,
      ),
    );
  }
}
