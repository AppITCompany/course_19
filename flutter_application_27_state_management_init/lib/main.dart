import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

import 'app.dart';
import 'counter_observer.dart';

/*
1) Counter bloc
2) Timer bloc
*/

void main() {
  Bloc.observer = const CounterObserver();
  runApp(const CounterApp());
}
