import 'dart:convert';
import 'dart:io';

void main() {
  register();
}

void register() {
  final name = surapBer('Atynyz: ');

  final age = surapBer('Jashynyz: ');

  final address = surapBer('Address: ');

  print('Atynyz: $name, jashynyz $age, address: $address. Iygiliktuu kattaldynyz. Rahmat.');
}

String surapBer(String suroo) {
  stdout.write(suroo);
  final value = stdin.readLineSync(encoding: utf8);
  return value!;
}
