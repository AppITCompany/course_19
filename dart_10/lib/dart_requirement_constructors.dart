// ignore_for_file: unused_local_variable

void main() {
  final batken = Oblast(atalyshy: 'Batken', aereport: 'Razakov internatiol airport');
  final jalalAbad = Oblast(atalyshy: 'Jalal-Abad', aereport: 'Jalal-Abad internation airport');
  final naryn = Oblast(atalyshy: 'Naryn');
  final osh = Oblast(atalyshy: 'Osh');
  final talas = Oblast(atalyshy: 'Talas');

  print(batken.atalyshy);
  print(batken.aereport);

  print(osh.atalyshy);
  print(osh.aereport);

  print(talas.atalyshy);
  print(talas.aereport);
}

class Oblast {
  /// Named consctuctor - atyn atap berilet argumentter
  /// Requirement constructions - Kee bir argumentterdi sozsuz beruu kerek bolso
  /// alarga `required` degen keyword berebiz.
  /// Bul jerde `atalyshy` degendi sozsuz beruu kerek, antkeni al `required`
  /// `aereport` berbei da koisok bolot.Antkeni al nullable(?).
  Oblast({
    required this.atalyshy,
    this.aereport,
  });

  final String atalyshy;
  final String? aereport;
}
