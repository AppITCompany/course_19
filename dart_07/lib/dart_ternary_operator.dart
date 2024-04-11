// Ternary operator
/*
if else'nin kyskacha varuyanty
*/

void main() {
  String? name;

  bool? isFinish;

  isFinish = birNerseJasa();

  // if (isFinish) {
  //   name = 'Atkaryndy';
  // } else {
  //   name = 'Atkarylgan jok';
  // }

  // `isFinish ?` - eger isFinish true bolso
  // `:` - andai emes bolso
  name = isFinish ? 'Atkaryndy' : 'Atkarylgan jok';

  print(name);
}

bool birNerseJasa() {
  return false;
}
