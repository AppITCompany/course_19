import 'package:flutter/material.dart';
import 'package:flutter_application_24_capital_game/components/app_bar_title.dart';
import 'package:flutter_application_24_capital_game/components/game_process_indicator.dart';
import 'package:flutter_application_24_capital_game/components/option_button.dart';
import 'package:flutter_application_24_capital_game/components/question_name.dart';
import 'package:flutter_application_24_capital_game/components/question_image.dart';

const bishkekImage =
    'https://i0.wp.com/mytravelation.com/wp-content/uploads/2023/11/Ala-Too-Square-Bishkek.jpg?resize=683%2C512&ssl=1';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(
          score: '32',
          index: 3,
        ),
        actions: [
          const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(7),
          child: GameProcessIndicator(3),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const QuestionName('Bishkek'),
          const QuestionImage(bishkekImage),
          Expanded(
            child: Column(
              children: [
                OptionButton(
                  optionName: 'A',
                  optionText: 'Kyrgyzstan',
                  onPressed: () {},
                ),
                OptionButton(
                  optionName: 'B',
                  optionText: 'Kazakstan',
                  onPressed: () {},
                ),
                OptionButton(
                  optionName: 'C',
                  optionText: 'Uzbekistan',
                  onPressed: () {},
                ),
                OptionButton(
                  optionName: 'D',
                  optionText: 'Tajikistan',
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}
