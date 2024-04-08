// DART FUNCTION

// retrun_type function_name (params) {}  -> formula function

// `void` - function ech nerse kaitarbait
// `taanysh1` - function'dyn aty
// `()` - function'dyn belgisi (eger paramstar bolso ushul jakka berilet)
// `{}` - function'dyn denesi (icinde atrkyla turgan kodtor)
// `String name,` -> 1-param
// `,` - argumentterdin je paramstardy biri birinen bolup turat
void taanysh1(
  String name,
  int age,
  String jer,
  String ulut,
  String univer,
  double weight,
  bool isMarried,
) {
  print(
    'Menin Atym $name. $age jashtamyn. Tulgan jerim $jer. Ulutum $ulut. Men $univer de oluganmyn. Salmagym $weight. Men ${isMarried ? 'Ui bulooluumun' : 'Boidokmun'}',
  );
}

// `({})` - ()-> functiondyn belgisi anym uchundegi {} named constructor
// `required` - Munu sozsuz ber (talap kylyngan)
// `${isMarried ? 'Ui bulooluumun' : 'Boidokmun'}`
//     isMarried ? - 'isMarried' maanisi `true`bu
//     `true` 'Ui bulooluumun'
//     : eger bolboso
//     `false` 'Boidokmun'
void taanysh2({
  required String name,
  required int age,
  required String jer,
  required String ulut,
  required String univer,
  required double weight,
  required bool isMarried,
}) {
  print(
    'Menin Atym $name. $age jashtamyn. Tulgan jerim $jer. Ulutum $ulut. Men $univer de oluganmyn. Salmagym $weight. Men ${isMarried ? 'Ui bulooluumun' : 'Boidokmun'}',
  );
}

// `num` - function kaitara turgan ozgormonun tibi (return_type)
// `kosh` - function name (biz kaalagandai bersek bolot)
// `return` - function atkarylyp burkondon kiyin kaitaryp beret
num kosh(int a, int b) {
  return a + b;
}

void main() {
  // `kosh` function chakylyp jatat
  kosh(3, 2);

  // `kosh` function chakylyp jatat. Birok function butkondon kiyin
  // natyijany `result` ka berip jatat
  final result = kosh(23, 45);

  print('result: $result');

  // Eger normal cuntsructor bolso anta paramstardyn jaigashkan orduna karap berebiz
  taanysh1(
    'Manas',
    30,
    'Talas',
    'Kyrgyz',
    'Oxford',
    80,
    false,
  );

  // Eger named cuntsructor bolso paramstardyn jaigashkain orduna emes atyn atap berebiz
  taanysh2(
    isMarried: true,
    jer: 'Osh',
    univer: 'Harward',
    name: 'Kurmanbek',
    age: 30,
    weight: 87,
    ulut: 'Kyrgyz',
  );
}
