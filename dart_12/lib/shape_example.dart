import 'dart:math';

abstract class Shape {
  double getArea();

  double getPerimeter();
}

void main() {
  final ailana1 = Circule(5);

  print(ailana1.getArea());
  print(ailana1.getPerimeter());
  print('--------------------');

  final uchBurchtuk1 = UchBurchtuk(10);
  print(uchBurchtuk1.getArea());
  print(uchBurchtuk1.getPerimeter());
  print('--------------------');

  final tortBurchtuk1 = TortBuchtuk(10, 6);
  print(tortBurchtuk1.getArea());
  print(tortBurchtuk1.getPerimeter());
  print('--------------------');

  final kopBurchtuk = KopBurchtuk(5, 6);
  print(kopBurchtuk.getArea());
  print(kopBurchtuk.getPerimeter());
  print('--------------------');
}

class Circule extends Shape {
  Circule(this.radius);

  final double radius;

  @override
  double getArea() {
    return 3.14 * radius * radius;
  }

  @override
  double getPerimeter() {
    return (3.14 * radius) * 2;
  }
}

class UchBurchtuk extends Shape {
  UchBurchtuk(this.lengthA);

  final double lengthA;

  @override
  double getArea() {
    return (sqrt(3) / 4) * pow(lengthA, 2);
  }

  @override
  double getPerimeter() {
    return lengthA * 3;
  }
}

class TortBuchtuk extends Shape {
  TortBuchtuk(this.lengthA, this.lengthB);

  final double lengthA;
  final double lengthB;

  @override
  double getArea() {
    return lengthA * lengthB;
  }

  @override
  double getPerimeter() {
    return (lengthA + lengthB) * 2;
  }
}

class KopBurchtuk extends Shape {
  final double lengthA;
  final int countAngle;

  KopBurchtuk(this.lengthA, this.countAngle);

  @override
  double getArea() {
    if (countAngle < 3) {
      throw ArgumentError('Polygon must have at least 3 sides');
    }
    final double angleInRadians = pi / countAngle;
    return (lengthA * lengthA * countAngle) / (2 * tan(angleInRadians));
  }

  @override
  double getPerimeter() {
    return lengthA * countAngle;
  }
}
