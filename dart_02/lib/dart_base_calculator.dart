import 'dart:convert';
import 'dart:io';

void main() {
  stdout.write("Birinchi san: ");
  final value1 = stdin.readLineSync(encoding: utf8);
  final birinchiSan = num.parse(value1 ?? '');

  stdout.write("Ekinchi san: ");
  final value2 = stdin.readLineSync(encoding: utf8);
  final ekinchiSan = num.parse(value2 ?? '');

  stdout.write("Koshuu uchun '+', kemituu uchun '-', koboituu uchun 'x', boluu uchun '/' jazynyz: ");
  final operator = stdin.readLineSync(encoding: utf8);

  print('operator => $operator');
  print('birinch san: $birinchiSan, ekinchi san $ekinchiSan');

  if (operator == '+') {
    final summa = birinchiSan + ekinchiSan;
    print('$birinchiSan + $ekinchiSan = $summa');
  } else if (operator == '-') {
    final ayirma = birinchiSan - ekinchiSan;
    print('$birinchiSan - $ekinchiSan = $ayirma');
  } else if (operator == 'x') {
    final koboitundu = birinchiSan * ekinchiSan;
    print('$birinchiSan x $ekinchiSan = $koboitundu');
  } else if (operator == '/') {
    final tiyindi = birinchiSan / ekinchiSan;
    print('$birinchiSan / $ekinchiSan = $tiyindi');
  } else {
    print('Siz jazgan operator tuura emes.');
  }
}
