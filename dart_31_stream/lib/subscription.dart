import 'dart:async';

void main(List<String> args) async {
  StreamController controller = StreamController.broadcast();

  final subscription1 = controller.stream.listen(
    (v) => print('1 subscription $v'),
  );

  final subscription2 = controller.stream.listen(
    (v) => print('2 subscription $v'),
  );

  final subscription3 = controller.stream.listen(
    (v) => print('3 subscription $v'),
  );

  controller.add(1);
  await Future.delayed(Duration(seconds: 1));
  controller.add(2);
  await Future.delayed(Duration(seconds: 1));
  controller.add(3);
  await Future.delayed(Duration(seconds: 1));
  controller.add(4);
  await Future.delayed(Duration(seconds: 1));
  controller.add(5);
  await Future.delayed(Duration(seconds: 1));

  subscription1.cancel();

  controller.add(6);
  await Future.delayed(Duration(seconds: 1));
  controller.add(7);
  await Future.delayed(Duration(seconds: 1));

  subscription2.cancel();
  subscription3.cancel();

  controller.close();
}
