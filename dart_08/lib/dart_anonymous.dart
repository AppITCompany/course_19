void main() {
  final list = [
    'Asel',
    'Elchibek',
    'Kurmangazy',
    'Nurgul',
    'Begimai',
    'Ulanbek',
  ];

  // list.forEach((name) => taanysh(name));
  // list.forEach(taanysh);

  /// Anonymous functions
  /// function dy bir jerde jazyp ubara bolboi ele tuz ozuno jaza alabyz
  // ignore: avoid_function_literals_in_foreach_calls
  list.forEach((text) {
    print('Salam menin atym $text');
  });

  // action();

  kosh();
}

void taanysh(String name) {
  print('Salam menin atym $name');
}

void kosh() {
  print('Kooosh');
}
