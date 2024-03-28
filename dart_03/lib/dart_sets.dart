// Dart Sets

/*
Sets - List'ke okshosh, 2 ele ayirmasy bar
       1) [] orduna {}
       2) ichinde okshosh elementten ekoo bolboit
       3) [index] orduna elementAt(index)
*/

void main() {
  final students = {
    'Asel',
    'Nurlan',
    'Kurmangazy',
    'Nurgul',
    'Meerim',
    'Ulanbek',
    'Elchibek',
    // 'Asel',  Duplicte bolup kaldy dep koshpoit
  };

  print(students);
  // {Asel, Nurlan, Kurmangazy, Nurgul, Meerim, Ulanbek, Elchibek}

  students.add('Ediiar');
  print(students);
  // {Asel, Nurlan, Kurmangazy, Nurgul, Meerim, Ulanbek, Elchibek, Ediiar}

  students.add('Asel');
  print(students);
  // {Asel, Nurlan, Kurmangazy, Nurgul, Meerim, Ulanbek, Elchibek, Ediiar}

  print(students.elementAt(4));
  // Meerim

  students.remove('Ulanbek');
  print(students);
  // {Asel, Nurlan, Kurmangazy, Nurgul, Meerim, Elchibek, Ediiar}

  students.remove(students.elementAt(2));
  print(students);
  // {Asel, Nurlan, Nurgul, Meerim, Elchibek, Ediiar}

  final complexSets = {'String', 1, 2.3, true};
  print(complexSets);
  // {String, 1, 2.3, true}

  print(students.contains('Nurgul'));
  // true

  print(students.contains('Kylychbek'));
  // false
}
