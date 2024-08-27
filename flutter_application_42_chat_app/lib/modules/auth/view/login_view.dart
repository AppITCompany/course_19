import 'package:flutter/material.dart';
import 'package:flutter_application_42_chat_app/components/components.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          SizedBox(height: size.height / 6),
          const FlashChatAnimated(),
          const SizedBox(height: 30),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'test@gmail.com',
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: const InputDecoration(
              hintText: '******',
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          CustomElevatedButton(
            text: 'Login',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
