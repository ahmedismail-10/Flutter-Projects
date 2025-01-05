import 'animal.dart';

class Cat extends Animal {
  Cat(super._name, super._age);

  @override
  void makeSound() {
    print('Meow!');
  }
}
