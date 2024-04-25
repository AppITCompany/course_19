// ignore_for_file: unnecessary_type_check

void main() {
  final hadicha = Bobok(name: 'Hadicha', isMale: false, jashy: 2);
  if (hadicha is Adam) {
    print('Ooba Hadicha Adam');
  }

  if (hadicha is Bobok) {
    print('Ooba Hadicha bobok');
  }

  if (hadicha is JashAdam) {
    print('Ooba Hadicha jash Adam');
  } else {
    print('Jok Hadicha jash Adam emes');
  }

  final aktan = JashAdam(
    name: 'Aktan',
    isMale: true,
    jashy: 21,
    isStuden: true,
  );

  aktan.kesipTandoo();
  aktan.uktoo();
}

class JashAdam extends Adam {
  JashAdam({
    required super.name,
    required super.isMale,
    required super.jashy,
    required this.isStuden,
  });

  final bool isStuden;

  void kesipTandoo() {
    print('Kim bolsoom...');
  }
}

class KaryAdam extends Adam {
  KaryAdam({
    required super.name,
    required super.isMale,
    required super.jashy,
  });

  @override
  void uiBuloKuruu() {
    if (isMale) {
      print('Menin kempirim bar');
    } else {
      print('Menin Abyshkam bar');
    }
  }

  @override
  void uktoo() {
    print('Men 5 saat uktaim');
  }

  void bataBeruu() {
    print('Oomiyin baktyluu bolgula, baaryngar senior flutter developer bolgula');
  }
}

class Bobok extends Adam {
  Bobok({
    required super.name,
    required super.isMale,
    required super.jashy,
  });

  @override
  void ishtoo() {
    print('Men ishtebeim kichinekeimin :)');
  }

  @override
  void uktoo() {
    print('Men 11 saat uktaim');
  }

  @override
  void uiBuloKuruu() {
    print('Vaay koisoz ee :) men ali jashmynda :)');
  }

  @override
  void oilonuu() {
    print('Tatuu jesem...');
  }

  void sutEmuu() {
    print('Kursak achty');
  }
}

class Adam {
  Adam({
    required this.name,
    required this.isMale,
    required this.jashy,
  });

  final String name;
  final int jashy;
  final bool isMale;

  void ishtoo() {
    print('Kudaiga shugur ish bolup jatat');
  }

  void uktoo() {
    print('men 8 saat uktaim');
  }

  void uiBuloKuruu() {
    if (isMale) {
      print('Men uilonup jatam');
    } else {
      print('Men turmushka chygyp jatam');
    }
  }

  void oilonuu() {
    print('Erteng emne kylam...');
  }
}
