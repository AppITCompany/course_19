import 'package:flutter/material.dart';
import 'package:flutter_application_28_news_app/main/cubit/main_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
            BlocBuilder<MainCubit, int>(builder: (context, state) {
              return Text(
                '$state',
                style: Theme.of(context).textTheme.displayMedium,
              );
            }),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('back to Main page'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<MainCubit>().decrement();
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
