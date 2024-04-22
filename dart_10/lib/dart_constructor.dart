void main() {
  final iPhone5 = Telefon('iPhone', 'iPhone 5', 16, 2012);
  print(iPhone5); // Instance of 'Telefon'
  print(iPhone5.marka); // iPhone
  print(iPhone5.model); // iPhone 5

  final macM1 = Computer();
  print(macM1); // Instance of 'Computer'
}

class Telefon {
  /// Constructions - class'tan bir ulgu tuzulup
  /// jatkanda parametrlerin alyp beret
  Telefon(
    this.marka,
    this.model,
    this.esTutum,
    this.jyly,
  );

  final String model;
  final String marka;
  final int esTutum;
  final int jyly;
}

/// `Computer` class'ynan da ulgu tuzo alabyz
/// Antkeni contructor jazylbasa da ozundo
/// ```dart
/// class Computer {
///   Computer();
/// }
/// ```
/// ushul syiaktuu default contructor bolot
class Computer {}
