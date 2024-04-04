import 'dart:convert';
import 'dart:io';

void main() {
  List mylist = [
    'Asel',
    'Nurlan',
    'Kurmangazy',
    'Nurgul',
    'Meerim',
    'Aruna',
    'Ulanbek',
    'Elchibek',
  ];

  final students = mylist;

  stdout.write("Tizmekke koshuu uchun [+], tizmekten aluu uchun [-], tizmeni koruu uchun [=] basynyz : ");
  final operator = stdin.readLineSync(encoding: utf8);

  if (operator == '+') {
    stdout.write("Kimdi kohsolu : ");
    final name = stdin.readLineSync(encoding: utf8);
    students.add('$name');
    print('Tizmek : $students');
  } else if (operator == '-') {
    stdout.write("Kimdi ochurolu : ");
    final name = stdin.readLineSync(encoding: utf8);
    students.remove('$name');
    print('Tizmek : $students');
  } else if (operator == '=') {
    print('Bisdin tizmede');
    for (var element in students) {
      print(element);
    }
  } else {
    print('Okshoshboy kaldy go');
  }
}
