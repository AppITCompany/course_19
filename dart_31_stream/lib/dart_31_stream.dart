import 'dart:async';

void main(List<String> args) async {
  final subscription = StreamController();
  subscription.add(3);
  await Future.delayed(Duration(seconds: 1));
  subscription.add(9);
  await Future.delayed(Duration(seconds: 1));

  final stream1 = subscription.stream;

  stream1.listen((v) {
    print(v);
  });

  subscription.add(1);
  await Future.delayed(Duration(seconds: 1));
  subscription.add(10);
  await Future.delayed(Duration(seconds: 1));
  subscription.add(17);

  subscription.close();

  // subscription.add(27); Error Antkeni biz subscription jaap salganbyz
}
