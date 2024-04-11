import 'dart:io';

void main() {
  var list = [
    'Bolot',
    'Alina',
    'Kanat',
    'Aleks',
    'Janna',
    'Masha',
  ];
  var students = list;
  print('Тизмеге кошуу үчүн [+], өчүрүү үчүн [-]) басыңыз:');
  var choice = stdin.readLineSync();
  if (choice == '+') {
    print('Кошулуучу студенттин аты:');
    var name = stdin.readLineSync();
    if (name != null && name != '') {
      students.add(name);
    } else {
      print('Suranych atyn tuura jazynyz');
    }
    print('$name тизмеге кошулду.');
  } else if (choice == '-') {
    print('Өчүрүлүүчү студенттин аты:');
    var name = stdin.readLineSync();
    if (students.contains(name)) {
      students.remove(name);
      print('$name тизмеден өчүрүлдү.');
    } else {
      print('Студент $name тизмеде жок.');
    }
  } else {
    print('Туура эмес киргизүү!');
  }
  print('Студенттердин азыркы тизмеси:');
  print(students);
}
