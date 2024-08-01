import 'package:flutter/material.dart';
import 'package:flutter_application_28_news_app/main/cubit/main_cubit.dart';
import 'package:flutter_application_28_news_app/main/view/settings_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<MainCubit, int>(
              builder: (contex, state) => Text(
                '$state',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const SettingsPage(),
                  ),
                );
              },
              child: const Text('go Settings page'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<MainCubit>().increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
