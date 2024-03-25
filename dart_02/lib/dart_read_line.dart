import 'dart:convert';
import 'dart:io';

// `stdout.write("Bit san jazynyz: ");` - terminal arkyluu bir maani surady

// `final value = stdin.readLineSync(encoding: utf8);`
// - terminalga jazgandy okup any value'ge berdi

// `final count = num.parse(value ?? '');`
// - value'nin maanisin num tipke kotorup berdi

void main() {
  stdout.write("Bit san jazynyz: ");
  final value = stdin.readLineSync(encoding: utf8);
  final count = num.parse(value ?? '');

  if (count > 10) {
    // Eger san 10'don chong bolso
    print('Siz jazgan san 10 don chong');
  } else if (count == 10) {
    // Eger san 10'go barabar bolso
    print('Siz jazgan san 10');
  } else if (count < 0) {
    // Eger san 0'don kichine bolso
    print('Siz jazgan san test san');
  } else {
    // Eger jogorudagy sharttardyn ech biri atkarylbasa
    print('Siz jazgan san 10 don kichine');
  }
}
