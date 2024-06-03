import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../components/piano_keyboard_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd8c2be),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('The Rocket Piano'),
      ),
      drawer: const Drawer(),
      body: RawScrollbar(
        controller: _controller,
        thumbVisibility: true,
        thumbColor: Colors.blue,
        radius: const Radius.circular(8),
        scrollbarOrientation: ScrollbarOrientation.top,
        thickness: 50,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                child: const Row(
                  children: [
                    PianoKeyboardItem(),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: ListView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: const [
                  PianoKeyboardItem(),
                  PianoKeyboardItem(),
                  PianoKeyboardItem(),
                  PianoKeyboardItem(),
                  PianoKeyboardItem(),
                  PianoKeyboardItem(),
                  PianoKeyboardItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
