// OOP
/*
class - keyword. Egerde dart'ka jangy bit type taanytuu uchun.
object - oshol class'tan bir ulgu.
property, vars - class'tyn ozgocholuktoru
this - ushul nerseni all.
*/

void main() {
  // String a = 'africa';
  // int b = 12;
  // bool c = true;
  // dynamic d = 'Dynamic';
  // num e = 23;
  // double f = 0.0;

  Mashina tesla = Mashina(
    'Tesla',
    4,
    1.5,
    4,
    'Sedan',
    5,
    false,
    'Kara',
    2024,
    'USA',
  );
  print(tesla); // Instance of 'Mashina'
  print(tesla.marka); // Tesla
  print(tesla.dongoloktunSany); // 4
  print(tesla.jyly);
  print(tesla.kuzov);

  Mashina fura = Mashina(
    'DAF',
    10,
    5.5,
    2,
    'Juk tashuuchu',
    2,
    true,
    'Ak',
    2024,
    'Kyrgyzstan',
  );
  print(fura); // Instance of 'Mashina'
  print(fura.marka); // DAF
  print(fura.dongoloktunSany); // 10
  print(fura.olkosu);
}

class Mashina {
  Mashina(
    this.marka,
    this.dongoloktunSany,
    this.motorKolomu,
    this.eshikterininSany,
    this.kuzov,
    this.orunduktardynSany,
    this.isUsed,
    this.tusu,
    this.jyly,
    this.olkosu,
  );

  // class vars, properties
  final String marka;
  final int dongoloktunSany;
  final double motorKolomu;
  final int eshikterininSany;
  final String kuzov;
  final int orunduktardynSany;
  final bool isUsed;
  final String tusu;
  final int jyly;
  final String olkosu;
}
