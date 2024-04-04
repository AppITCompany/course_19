// For Loop
/*
For Loop - цикл (kaitalanuu, kaitoloo) Egerde for'dun sharty `true` bolso
           denesindegi kodtor ishteit.
*/

void main() {
  final students = [
    'Asel',
    'Begimai',
    'Elchibek',
  ];

  // for 1: student = students[0] 'Asel'
  // for 2: student = students[1] 'Begimai'
  // for 3: student = students[2] 'Elchibek'
  for (final student in students) {
    print(student);
  }

  // 1) ozgormo, 2) shart 3) action
  // for (int i = 0; i < 10; i++) {
  //   print(i);
  // }

  // i = 0, 0<2(true) bergendigi uchun shart atkarylat
  // i = 1, 1<2(true) bergendigi uchun shart atkarylat
  // i = 2, 2<2(false) bergendigi uchun shart atkargan jok
  for (var i = 0; i < 2;) {
    print(i);
    i++;
  }
}
