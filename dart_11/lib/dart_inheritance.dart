void main() {
  final cat1 = Cat(name: 'Tom');
  print(cat1);
  print(cat1.name);
  print(cat1.color);
  print(cat1.breed);

  cat1.unChygar(); // miyav, miyav

  cat1.tamaktanuu(); // ...
}

class Cat extends Pet {
  Cat({
    required super.name,
  });

  @override
  void unChygar() {
    print('miyav, miyav');
  }

  @override
  void tamaktanuu() {
    print('Ohoo chong kelemish eken, soonun toidum :)');
  }
}

// 'Pet' - uy jandygy
class Pet {
  Pet({
    required this.name,
    this.breed = 'Jonokoi',
    this.color = 'Kara',
  });

  final String name;
  final String color;
  final String breed;

  void unChygar() {
    print('...');
  }

  void tamaktanuu() {
    print('...');
  }
}
