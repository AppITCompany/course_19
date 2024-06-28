import 'package:dio/dio.dart';

Future<void> main() async {
  final list = [
    'talas',
    'batken',
    'bishkek',
    'naryn',
    'osh',
    'jalal-abad',
    'ysyk-kol',
  ];

  Map<String, num> results = {};

  for (var item in list) {
    final response = await Dio().get(
      'https://api.weatherapi.com/v1/current.json?key=e9d7452a41614cdea32164320231910&q=asia-$item',
    );

    final tempC = response.data['current']['temp_c'];

    results.addAll(
      {item.toUpperCase(): tempC},
    );
  }

  var sortedEntries = results.entries.toList()..sort((a, b) => b.value.compareTo(a.value));

  for (var i in sortedEntries) {
    print('${i.key}: ${i.value}');
  }
}

void salamBer() {
  print('Salam');
}

void salamBer2() => print('Salam');
