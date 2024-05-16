import 'package:flutter/material.dart';
import 'package:flutter_aplication_06_assets/second_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECB90B),
      appBar: AppBar(
        backgroundColor: const Color(0xffECB90B),
        title: const Text('Тапшырма 3'),
        elevation: 3,
        shadowColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'I’m Rich',
              // style: TextStyle(fontSize: 48, fontFamily: 'Sofia'),
              style: GoogleFonts.sofia(fontSize: 48),
            ),
            Image.asset(
              'assets/diamond.png',
              width: 300,
            ),
            Image.network(
              'https://t3.ftcdn.net/jpg/05/79/91/90/360_F_579919011_3nUAOTj14Dj0eIGkDk7FwnpOv9QNOWiO.jpg',
              height: 70,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const SecondPage(),
                  ),
                );
              },
              child: const Text('Go to Second Page'),
            ),
          ],
        ),
      ),
    );
  }
}
