import 'package:flutter/material.dart';
import 'package:flutter_application_10_piano_app/components/small_keyboard.dart';

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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: const BorderSide(
            color: Color.fromARGB(255, 97, 73, 70),
            width: 2,
          ),
        ),
        scrollbarOrientation: ScrollbarOrientation.top,
        thickness: MediaQuery.of(context).size.height * 0.12,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              color: const Color.fromARGB(255, 114, 88, 83),
              child: const Opacity(
                opacity: 0.6,
                child: SmappKeyboard(),
              ),
            ),
            Expanded(
              child: ListView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: const [
                  PianoKeyboardItem(index: 1),
                  PianoKeyboardItem(index: 2),
                  PianoKeyboardItem(index: 3),
                  PianoKeyboardItem(index: 4),
                  PianoKeyboardItem(index: 5),
                  PianoKeyboardItem(index: 6),
                  PianoKeyboardItem(index: 7),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
