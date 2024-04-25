void main() {
  final cat1 = Cat(name: 'Tom');
  print(cat1); // Intance of 'Cat'
  print(cat1.name); // Tom
  print(cat1.color); // Targyl
  print(cat1.breed); // Jonokoi
  cat1.unChygar();
  cat1.tamaktanuu();
}

class Cat {
  Cat({
    required this.name,
    this.color = 'Targyl',
    this.breed = 'Jonokoi',
  });

  final String name;
  final String color;
  final String breed;

  void unChygar() {
    print('miyav, miyav');
  }

  void tamaktanuu() {
    print('Ohoo chong kelemish eken, soonun toidum :)');
  }
}
