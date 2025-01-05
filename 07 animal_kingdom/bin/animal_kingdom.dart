import 'dog.dart';
import 'cat.dart';

void main() {
  Dog dog1 = Dog('Buddy', 3);
  Cat cat1 = Cat('Whiskers', 2);

  dog1.makeSound(); // "Woof!"
  cat1.makeSound(); // "Meow!"

  print('${dog1.getName()} is ${dog1.getAge()} years old.');
  print('${cat1.getName()} is ${cat1.getAge()} years old.');

}
