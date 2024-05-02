// Abstraction
/*
Abstraction - dart tiline ulguzu tuzulo 
              albagan tushunukk kitguzuu uchun koldonobuz
              andan muras classtar 2 jok arkyluu muras alat
              `extends` jana  `implements`

extends - muras aluu. Bodysy bolgon mehtodtordu kaira 
          mildetttu turdo jazdyrbait
implements - muras aluu. Birok parant class'ta methodtun bodusy 
             bolso dagy kaira jazdyrat
*/

void main() {
  final adam1 = Adam();
  // final janduuJaratylysh1 = JanduuJaratylys();
  // // Error : Abstract class'tan ulgu tuzulboit
  adam1.jaraluu();
  adam1.salamBer();
}

// Janduu jaratylysh
// 1) Adamdar
// 2) Janybarlar
// 3) Osumduktor
// 4) Virustar
// 5) Bakteriyalar
// 6) Kozu karyndar

abstract class JanduuJaratylys {
  void jashoo();
  void osuu();
  void jaraluu();
  void jokBoluu();

  void salamBer() {
    print('Salam');
  }
}

class Adam extends JanduuJaratylys {
  @override
  void jaraluu() {
    print('Men toroldum');
  }

  @override
  void jashoo() {
    print('Men jashap jatam, Jashoo keremet');
  }

  @override
  void jokBoluu() {
    print('Kosh bolgula');
  }

  @override
  void osuu() {
    print('Men osup jatam');
  }
}

class Janybar extends JanduuJaratylys {
  @override
  void jaraluu() {}

  @override
  void jashoo() {}

  @override
  void jokBoluu() {}

  @override
  void osuu() {}
}

class Osumduktor implements JanduuJaratylys {
  @override
  void jaraluu() {}

  @override
  void jashoo() {}

  @override
  void jokBoluu() {}

  @override
  void osuu() {}

  @override
  void salamBer() {}
}
