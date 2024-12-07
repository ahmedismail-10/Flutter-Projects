import 'dart:io';

void main() {
  print('Entar your name');
  String name = stdin.readLineSync()!;
  double programming, math, english, science;

  // read grade in Programming
  print('Enter your grade in Programming between 0 and 100');
  programming = double.parse(stdin.readLineSync()!);
  if (programming < 0 || programming > 100) {
    print('Invalid grade!, please Enter a valid grade between 0 and 100');
    programming = double.parse(stdin.readLineSync()!);
  }

  // read grade in Math
  print('Enter your grade in Math between 0 and 100');
  math = double.parse(stdin.readLineSync()!);
  if (math < 0 || math > 100) {
    print('Invalid grade!, please Enter a valid grade between 0 and 100');
    math = double.parse(stdin.readLineSync()!);
  }

  // read grade in English
  print('Enter your grade in English between 0 and 100');
  english = double.parse(stdin.readLineSync()!);
  if (english < 0 || english > 100) {
    print('Invalid grade!, please Enter a valid grade between 0 and 100');
    english = double.parse(stdin.readLineSync()!);
  }

  // read grade in Science
  print('Enter your grade in Science between 0 and 100');
  science = double.parse(stdin.readLineSync()!);
  if (science < 0 || science > 100) {
    print('Invalid grade!, please Enter a valid grade between 0 and 100');
    science = double.parse(stdin.readLineSync()!);
  }

  double sumOfGrades = programming + math + english + science;
  double avgOfGrades = sumOfGrades / 4; // Avg = Sum of grades division by number of grades(4)

  String grade;
  if (avgOfGrades <= 100 && avgOfGrades >= 90) {
    grade = 'A';
  } else if (avgOfGrades < 90 && avgOfGrades >= 80) {
    grade = 'B';
  } else if (avgOfGrades < 80 && avgOfGrades >= 70) {
    grade = 'C';
  } else if (avgOfGrades < 70 && avgOfGrades >= 60) {
    grade = 'D';
  } else {
    grade = 'F';
  }

  print('Name: $name');
  print(
      'Programming score: $programming \nMath score: $math \nEnglish score: $english \nScience score: $science');
  print('Total score: $sumOfGrades \nAverage score: $avgOfGrades');
  print('Grade: $grade');
}
