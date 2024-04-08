void main() {
  int a = 3;

  if (a == 1) {
    // a 1'ge barabarby
    print('Altyn');
  } else if (a == 2) {
    print('Kumush');
  } else if (a == 3) {
    print('Kolo');
  } else {
    print('Sertifikat');
  }

  switch (a) {
    case 1: // a 1 bi?
      print('Altyn');
    case 2:
      print('Kumush');
    case 3:
      print('Kolo');
    default:
      print('Sertifikat');
  }

  final syilyk = switch (a) {
    1 => 'Altyn',
    2 => 'Kumush',
    3 => 'Kolo',
    _ => 'Sertifikat',
  };

  print(syilyk);
}
