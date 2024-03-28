// Dart List
/*
List - (kolleksia, jyiyndy, tizme) 
*/

void main() {
  // `final` - dart keyword (ozgormogo bir maani berilet kiyin ozgortulbeit)
  // `students` - ozgormonun atalyshy
  // `[]` - List (kolleksia, jyiyndy...)
  final students = [
    'Asel',
    'Nurlan',
    'Kurmangazy',
    'Nurgul',
    'Meerim',
    'Ulanbek',
    'Elchibek',
  ];

  print(students);
  // [Asel, Nurlan, Kurmangazy, Nurgul, Meerim, Ulanbek, Elchibek]

  print(students[5]);
  // Ulanbek

  print(students[2]);
  // Kurmangazy

  students.add('Eldiiar');
  print(students);
  // [Asel, Nurlan, Kurmangazy, Nurgul, Meerim, Ulanbek, Elchibek, Eldiiar]

  students.remove('Elchibek');
  print(students);
  // [Asel, Nurlan, Kurmangazy, Nurgul, Meerim, Ulanbek, Eldiiar]

  students.removeAt(2);
  print(students);
  // [Asel, Nurlan, Nurgul, Meerim, Ulanbek, Eldiiar]

  students.add('Kurmangazy');
  print(students);
  // [Asel, Nurlan, Nurgul, Meerim, Ulanbek, Eldiiar, Kurmangazy]

  students.insert(3, 'Elchibek');
  print(students);
  // [Asel, Nurlan, Nurgul, Elchibek, Meerim, Ulanbek, Eldiiar, Kurmangazy]

  print(students.length);
  // 8

  print(students.indexOf('Meerim'));
  // 4

  students.add('Asel');
  print(students);
  // [Asel, Nurlan, Nurgul, Elchibek, Meerim, Ulanbek, Eldiiar, Kurmangazy, Asel]

  final comlexLis = ['String', 1, 2.3, true];
  print(comlexLis);
  // [String, 1, 2.3, true]

  print(students.contains('Ruslan')); // ushul elementti kamtyiby
  // false

  print(students.contains('Eldiiar'));
  // true

  print(students.where((element) => element != 'Asel'));
  // (Asel, Asel)
}
