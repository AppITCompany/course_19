void main() {
  kutupSalamBer();
  salamBer();

  summa(2, 3);
}

void salamBer() {
  print('Salam 1');
}

Future<void> kutupSalamBer() async {
  await Future.delayed(Duration(seconds: 3));
  print('Salam 2');
}

Future<int> summa(int a, int b) async {
  await Future.delayed(Duration(seconds: 4));
  final sum = a + b;
  print(sum);
  return sum;
}
