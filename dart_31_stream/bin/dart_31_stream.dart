void main() async {
  final value = await _kutupBirKaitar();
  print(value);

  _dataAgymy().listen((value) {
    print(value);
  });
}

Future<int> _kutupBirKaitar() async {
  await Future.delayed(Duration(seconds: 1));
  return 1;
}

Stream<int> _dataAgymy() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 5;
  await Future.delayed(Duration(seconds: 1));
  yield 4;
  await Future.delayed(Duration(seconds: 2));
  yield 3;
  await Future.delayed(Duration(seconds: 1));
  yield 2;
  await Future.delayed(Duration(seconds: 3));
  yield 1;
}
