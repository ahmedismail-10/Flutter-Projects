class Animal {
  String? _name;
  int? _age;

  Animal(this._name, this._age);

  String? getName() {
    return _name;
  }

  void setName(String? name) {
    _name = name;
  }

  int? getAge() {
    return _age;
  }

  void setAge(int? age) {
    _age = age;
  }

  void makeSound() {
    print('Some generic animal sound');
  }
}
