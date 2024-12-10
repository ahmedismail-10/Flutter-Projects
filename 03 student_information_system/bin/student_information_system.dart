import 'dart:io';

void main() {
  Student student1 = Student('Ahmed', 20, 'B+');
  student1.printInfo();
  student1.updateGrade('A');
  student1.printInfo();
}

class Student {
  String? name;
  int? age;
  String? grade;

  Student(String name, int age, String grade) {
    this.name = name;
    this.age = age;
    this.grade = grade;
  }
  void printInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Grade: $grade');
  }

  void updateGrade(String newGrade) {
    grade = newGrade;
  }
}
