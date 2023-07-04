import 'dart:io';

void main() {
  List<int> array = [];

  while (true) {
    printMenu();
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        insertElement(array);
        break;
      case 2:
        deleteElement(array);
        break;
      case 3:
        updateElement(array);
        break;
      case 4:
        showElements(array);
        break;
      case 5:
        exit(0);
        return;
      default:
        print("Invalid choice, please select an valid option from the menu");
    }
    print("\n");
  }
}

void insertElement(List<int> array) {
  print("Enter the element in array");
  int element = int.parse(stdin.readLineSync()!);
  array.add(element);
  print("Element $element inserted");
}

void deleteElement(List<int> array) {
  if (array.isEmpty) {
    print("Array is empty, nothing to delete. ");
  } else {
    print("Enter the element to delete");
    int element = int.parse(stdin.readLineSync()!);
    if (array.remove(element)) {
      print("Element $element deleted");
    }
  }
}

void updateElement(List<int> array) {
  if (array.isEmpty) {
    print("Array is empty, nothing to update. ");
  } else {
    print("Enter the index of the element to update. ");
    int element = int.parse(stdin.readLineSync()!);
    if (element >= 0 && element < array.length) {
      print("Enter the new value");
      int newValue = int.parse(stdin.readLineSync()!);
      array[element] = newValue;
      print("Element updated");
    } else {
      print("Invalid index");
    }
  }
}

void showElements(List<int> array) {
  if (array.isEmpty) {
    print("Array is empty, nothing to show. ");
  } else {
    print("Array elements:");
    for (var elements in array) {
      print(elements);
    }
  }
}

void printMenu() {
  print("Menu:");
  print("1. Insert an element in array.");
  print("2. Delete an element from array:");
  print("3. update an element in array");
  print("4. view all element in array");
  print("5. Exit");
}
