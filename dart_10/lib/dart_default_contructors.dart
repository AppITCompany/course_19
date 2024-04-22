// ignore_for_file: unused_local_variable

void main() {
  final st1 = Okuuchu('Aktan');
  final st2 = Okuuchu('Akylai', address: 'Semetei aiyly');
  final st3 = Okuuchu('Talimjan');
  final st4 = Okuuchu('Beknazar', jyly: 2007);

  print(st3.name);
  print(st3.jyly);
  print(st3.address);

  print('----------------------');

  print(st4.name);
  print(st4.jyly);
  print(st4.address);

  print('----------------------');

  print(st2.name);
  print(st2.jyly);
  print(st2.address); // Semetei aiyly
}

class Okuuchu {
  /// Default controctors - Egerde bizdin paramatrdi dayima
  /// ele bere berbei ozundo demeiki(default/По умолчанию)
  /// maanisi bolso koldonobuz.
  /// Egerde biz `address/jyly` degendi bersek, biz bergen maanini alat.
  /// Bolboso `'Manas aiyly'` jana `2008` dep koldonot
  Okuuchu(
    this.name, {
    this.address = 'Manas aiyly',
    this.jyly = 2008,
  });

  final String name;
  final int jyly;
  final String address;
}
