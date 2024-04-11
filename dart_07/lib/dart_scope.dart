// Dart function scope
// ignore_for_file: unused_element

/*
Eger ozgormobuz gbolbal emes bolso, anda any ozunun 
chek arasynda (ozunon ustundogu `{}`) gana koldono alabyz.
*/

// `boy` ech kandai chek arasy jok gbolbal bolgondugu uchun
// baardyk jerde koldono alabyz
final boy = 175;

void salamBer() {
  // `name` salamBer functiondyn ichinde bolgondugu uchun
  // salamBer'din denesinde gana koldono alabyz
  final name = 'Flutter';
  print('Salam $name');
  print('Boy $boy');
  // print('Salmak $salmak'); error // antkeni `salmak` main'din ichinde

  void koshtosh() {
    final age = 30;
    print('Kosh $name');
    print('Kosh $age jash');
    print('Boy $boy');
  }

  // print('Salam $age jash'); error // antkeni `age` koshtosh'tun ichinde
}

void main() {
  salamBer();

  final salmak = 80;

  // print('Kosh $name'); error // `name` salamBer'din ichinde
  print('Boy $boy');

  print('Salmak $salmak');
}
