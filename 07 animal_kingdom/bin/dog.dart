import 'animal.dart';

class Dog extends Animal {
  Dog(super._name, super._age);

  @override
  void makeSound() {
    print('Woof!');
  }
}
