import 'package:flutter/material.dart';

/* 
StatefulWidget - Eger UI jangylsa koldonulgan widget
   `setState` bir gana StatefulWidget'tin ichinde gana isgteit.

Brightness - Temany jaryk(light-mode) je karangy(dark-mode) ko kotoruu uchun

MaterialApp darkTheme - Eger telefon dark temeda bolso. Tirkemebiz kandai temany koldonsun

TextField - Koldonuuchudan text turundo data aluu uchun koldonulat

ElevatedButton.styleFrom - ElevatedButton'go style beruu uchun
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Brightness _brightness = Brightness.light;

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: _brightness,
          seedColor: Colors.yellow,
          primary: Colors.yellow,
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Colors.yellow,
          primary: Colors.yellow,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                if (_brightness == Brightness.light) {
                  _brightness = Brightness.dark;
                } else {
                  _brightness = Brightness.light;
                }
                setState(() {});
              },
              icon: Icon(_brightness == Brightness.light ? Icons.dark_mode : Icons.light_mode),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 36),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: TextField(
                  decoration: InputDecoration(hintText: 'Enter your name'),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        _obscureText = !_obscureText;
                        setState(() {});
                      },
                      icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.black,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                ),
                child: const Text('ENTER'),
              ),
              // CircularProgressIndicator.adaptive(),
              const SizedBox(height: 150),
            ],
          ),
        ),
      ),
    );
  }
}
