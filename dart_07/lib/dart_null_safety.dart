// Dart Null Safety
/*
Null Safety - bir data null bolup kaluu abalyn aldyn ala eskertet
*/

void main() {
  // `?` ozgormo `null` bolup kalyshy mumkun
  // `??` eger null bolup kalsa orduna {} koldon
  // `!` ech kam sanaba bul null emes 100% kepildik
  int? a;
  a = 3;
  int b = 2 + (a);
  print(b);
  // kosh(); error // antkeni `d!` dagy dele null
  kemit();
}

void kosh() {
  int c = 20;
  int? d;
  print(c + d!);
}

void kemit() {
  int c = 60;
  int? d;
  print(c - (d ?? 10));
}
