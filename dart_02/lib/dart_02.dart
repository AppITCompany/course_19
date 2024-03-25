// ignore_for_file: unused_local_variable

void main() {
  // bir adam
  // aty, jashy, tuulgan jyly, tuulgan jeri, uy-buloluk abaly ...

  String name = 'Aktan';
  // name = 12;  Error (name'din tibin String dep atap koigonbuz)
  name = 'Manas';

  int age = 15;
  age = 16;
  // age = 17.8; Error (age'din tibi int, double bere albaibyz)

  bool isMarried = false;
  isMarried = true;

  final year = 1993;
  // year = 2003; Error (final bir berilgen maanini kaira ozgortpoit)

  const pi = 3.14;
  // pi = 14.3; Error (const ar dayim oshol mmanide gana ishteit)

  var lastName = 'Abai uulu';
  // lastName = 34; Error (var keyword, birinchi tibin ech kachan ozgortpoit)
  lastName = 'Abauov';

  dynamic address = 'yntymak ayily';
  address = 234; // dynamic tibin da maanisin da ozgorto alat
}
