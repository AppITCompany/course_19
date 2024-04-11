final name = 'Erlan';
// final name = 'Asel';

void main() {
  // print('Name $name'); error // antkeni `name` degen ozgormo bar

  final name = 'Elchibek';
  // final name = 'Nurlan'; error // name atynda uje ozgormo bar
  print('Salam $name'); // Elchibek dep jazat sebebi algach local'dy karait

  salamBer();
  koshTosh();
}

void salamBer() {
  final name = 'Nurlan'; // error berbeit sebebi bul salamBer'ge taandyk `name`
  print('Salam $name');
}

void koshTosh() {
  print('Kosh bol $name');
}
