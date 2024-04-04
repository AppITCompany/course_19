import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  bool ulantalyby = true;

  while (ulantalyby) {
    final secretSan = Random().nextInt(10);
    print('Men 0 menen 9 arasynan bir san oilodum. Kyiyn bolsong taap al :). Sende 3 mumkunchuluk bar.');
    final shans = 3;
    num userSan = 0;
    for (var i = 1; i <= shans; i++) {
      stdout.write("Kausy san dep oiloisung: ");
      final sanValue = stdin.readLineSync(encoding: utf8); // '8'
      userSan = num.parse(sanValue!); // 8
      if (userSan == secretSan) {
        break;
      } else {
        print('Taba algan joksung. Dagy oilonchu');
        continue;
      }
    }

    if (userSan == secretSan) {
      print('Wow🥳🥳🥳 Barakelde taap albadyngby! Kele dagy');
    } else {
      print('Kaap... taba algan joksung. Loh turbaisyngby 🤣🤣🤣');
    }

    stdout.write("Dagy oinoilubu? ooba-1, jok-0: ");
    final value = stdin.readLineSync(encoding: utf8);
    if (value == '1') {
      ulantalyby = true;
    } else {
      ulantalyby = false;
    }
  }
}
