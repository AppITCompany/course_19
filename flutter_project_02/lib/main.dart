import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MeninTirkemem());
}

class MeninTirkemem extends StatelessWidget {
  const MeninTirkemem({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int san = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text(
          'Flutter Course 19',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$san',
              style: const TextStyle(fontSize: 70),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                  onPressed: remove,
                  icon: const Icon(Icons.remove),
                  label: const Text('Decrement'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    if (kDebugMode) {
                      print('Salam');
                    }
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Increment'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void remove() {
    setState(() {
      san++;
    });
  }
}
