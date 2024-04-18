void main() {
  final johne = Adam(
    'Johne',
    1997,
    'Amarican',
    'English',
    'Islam',
    true,
    false,
    185,
    80,
    'New York, st Wall.',
  );

  print(johne); // Instance of 'Adam'
  print(johne.aty); // Johne
  print(johne.jyly); // 1997
  print(johne.ulutu); // American

  johne.taanysh();

  print('--------------------------------------');

  final gulzat = Adam(
    'Gulzat',
    2005,
    'Kyrgyz',
    'Kyrgyz',
    'Islam',
    false,
    false,
    170,
    55,
    'Bishkek. Manas kochosu 114',
  );

  print(gulzat); // Instance of 'Adam'
  print(gulzat.aty); // Gulzat
  print(gulzat.jyly); // 2005
  print(gulzat.ulutu); // Kyrgyz

  gulzat.taanysh();

  print('------------------------------');

  print(true.runtimeType);
  print(gulzat.runtimeType);
}

class Adam {
  Adam(
    this.aty,
    this.jyly,
    this.ulutu,
    this.tili,
    this.dini,
    this.erkekpi,
    this.uilongonbu,
    this.boyu,
    this.salmagy,
    this.addresi,
  );

  final String aty;
  final int jyly;
  final String ulutu;
  final String tili;
  final String dini;
  final bool erkekpi;
  final bool uilongonbu;
  final int boyu;
  final int salmagy;
  final String addresi;

  // Method
  void taanysh() {
    print('Manim atym $aty. $jyly-jyly torolgonmun...');
  }
}
