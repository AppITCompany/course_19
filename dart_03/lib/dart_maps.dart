// Dart Maps
// ignore_for_file: non_constant_identifier_names

/*
Maps - bul achkych(key) jana maani(value) menen ishteit
       maanini algybyz kelse key arkyluu alabyz
*/

void main() {
  final ky_en = {
    // key : value
    'one': 'Bir',
    'two': 'Eki',
    'three': 'Uch',
    'four': 'Tort',
  };

  print(ky_en);
  // {one: Bir, two: Eki, three: Uch, four: Tort}

  print(ky_en['four']);
  // Tort

  ky_en.addAll({'five': 'Besh'});
  print(ky_en);
  // {one: Bir, two: Eki, three: Uch, four: Tort, five: Besh}

  ky_en.remove('two');
  print(ky_en);
  // {one: Bir, three: Uch, four: Tort, five: Besh}

  print(ky_en.containsKey('ten'));
  // false

  print(ky_en.containsValue('Tort'));
  // true

  print(ky_en.containsKey('Besh'));
  // false

  print(ky_en.containsValue('Besh'));
  // true
}
