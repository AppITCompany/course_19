import 'package:flutter/material.dart';
import 'package:flutter_application_42_chat_app/modules/modues.dart';
import 'package:flutter_application_42_chat_app/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MaterialTheme(Theme.of(context).textTheme).light(),
      home: const InitialView(),
    );
  }
}
