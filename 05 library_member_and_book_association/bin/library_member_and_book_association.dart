import 'dart:io';

void main() {
  Member ahmed = Member('Ahmed', 'M001');
  Book book1 = Book('Dart for Beginners', 'John Doe');
  Book book2 = Book('Flutter for Beginners', 'Thrwat Samy');
  ahmed.borrowBook(book1);
  ahmed.borrowBook(book2);
  ahmed.printMemberInfo();
  ahmed.returnBook(book1);
  ahmed.printMemberInfo();
}

class Book {
  String? title;
  String? author;
  Book(String title, String author) {
    this.title = title;
    this.author = author;
  }
}

class Member {
  String? name;
  String? membershipNumber;
  List<Book> listOfBorrowedBook = [];

  Member(String name, String membershipNumber) {
    this.name = name;
    this.membershipNumber = membershipNumber;
  }

  void borrowBook(Book book) {
    listOfBorrowedBook.add(book);
  }

  bool returnBook(Book book) {
    return listOfBorrowedBook.remove(book);
  }

  void printMemberInfo() {
    print('Name: $name');
    print('Membership number: $membershipNumber');
    print('List of borrowed book:');
    for (int i = 0; i < listOfBorrowedBook.length; ++i) {
      print('${i + 1}-${listOfBorrowedBook[i].title}');
    }
  }
}
