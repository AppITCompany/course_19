// ignore_for_file: unused_local_variable

void main() {
  final jolbors = Jandyk('Jolbors');
  final birJandyk = Jandyk();
  final birJandyk1 = Jandyk();

  print(jolbors.name);
  print(birJandyk.name);

  print('--------------------------');

  final kurok = Buium('Kurok');
  final birNerse1 = Buium();
  final birNerse2 = Buium();
  final birNers3 = Buium();

  print(kurok.name);
  print(birNers3.name);
}

class Jandyk {
  /// Optional constructions - argumentti kaalasak berebiz, kaalasak berbeibiz
  /// Mialy bul jerde `name`'di bersek alat, berbesek `null` katary koldonot
  Jandyk([this.name]);
  final String? name;
}

class Buium {
  /// Optional constructions - argumentti kaalasak berebiz, kaalasak berbeibiz
  /// Mialy bul jerde `name`'di bersek alat, berbesek `Bir nerse` katary koldonot
  Buium([this.name = 'Bir nerse']);
  final String name;
}
