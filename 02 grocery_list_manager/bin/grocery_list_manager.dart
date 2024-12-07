import 'dart:io';

void main() {
  List<String> groceryList = [];
  int choice;
  String item;

  do {
    displayGroceryList();
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1: // Add item
        {
          print('Enter the item to add:');
          item = stdin.readLineSync()!;
          addItem(groceryList, item);
          print('Item added successfully.');
        }
        break;
      case 2: // Remove item
        {
          print('Enter the item to remove:');
          item = stdin.readLineSync()!;
          bool isRemoved = removeItem(groceryList, item);
          print(isRemoved
              ? 'Item is removed successfully.'
              : 'Item not found in the list.');
        }
        break;
      case 3: // View List
        {
          String displayFormat;
          print('Enter display format (asis, uppercase, lowercase):');
          displayFormat = stdin.readLineSync()!;
          if (groceryList.isNotEmpty) {
            viewList(groceryList, displayFormat: displayFormat);
          } else {
            print('List is empty!');
          }
        }
        break;
      case 4: // Search for Item
        {
          print('Enter the item to search:');
          item = stdin.readLineSync()!;
          int? index = search(groceryList, item);
          if (index != null) {
            print('Item found at index $index.');
          } else {
            print('Item not found.');
          }
        }
        break;
      case 5: // Exit
        {
          print('Exiting program. Goodbye!');
        }
        break;
      default:
        print('Invalid choice. Please try again.');
        break;
    }
  } while (choice != 5);
}

void displayGroceryList() {
  print('============================');
  print('--- Grocery List Manager ---');
  print('1. Add Item');
  print('2. Remove Item');
  print('3. View List');
  print('4. Search for Item');
  print('5. Exit');
  print('============================');
}

void addItem(List<String> groceryList, String item) {
  groceryList.add(item);
}

bool removeItem(List<String> groceryList, String item) {
  return groceryList.remove(item);
}

void viewList(List<String> groceryList, {String displayFormat = 'asis'}) {
  for (var item in groceryList) {
    if (displayFormat == 'uppercase') {
      print(item.toUpperCase());
    } else if (displayFormat == 'lowercase') {
      print(item.toLowerCase());
    } else {
      print(item);
    }
  }
}

int? search(List<String> groceryList, String item) {
  int? index;
  for (int i = 0; i < groceryList.length; i++) {
    if (item == groceryList[i]) {
      index = i;
      break;
    }
  }
  return index;
}
