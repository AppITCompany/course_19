import 'package:flutter/material.dart';
import 'package:flutter_application_42_chat_app/components/components.dart';
import 'package:flutter_application_42_chat_app/modules/modues.dart';

class InitialView extends StatelessWidget {
  const InitialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const FlashChatAnimated(),
            const SizedBox(height: 30),
            CustomElevatedButton(
              text: 'Login',
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const LoginView(),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            CustomElevatedButton(
              text: 'Register',
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const RegisterView(),
                  ),
                );
              },
            ),
            const Spacer(),
            Text(
              '© Developed by Group-19',
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
