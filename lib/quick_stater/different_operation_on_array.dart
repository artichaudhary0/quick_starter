import 'dart:io';

void main() {
  List<List<int>> matrix = List.generate(
    3,
    (index) => List.generate(3, (index) => 0),
  );
  print("Enter elemts for the matrix");
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      print("Enter elements at position {$i , $j}");
      matrix[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  bool exit = false;
  while (!exit) {
    print("Menu");
    print("1. Sum of all elements");
    print("2. Sum of specific row.");
    print("4. Sum of specific column.");
    print("5. Sum of diagonal elements.");
    print("6. Exit.");
    print("Please Enter you're choice");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        {
          int sum = calculateSumOfAllElements(matrix);
          print(" Sum all elements are: $sum ");
          break;
        }
      case 2:
        {
          print("Enter the row index which you want to add ");
          int rowIndex = int.parse(stdin.readLineSync()!);
          int sum = calculateSumOfSpecificRow(matrix, rowIndex);
          print(" Sum of row $rowIndex : $sum ");
          break;
        }
      case 3:
        {
          print("Enter the column index which you want to add ");
          int columnIndex = int.parse(stdin.readLineSync()!);
          int sum = calculateSumOfSpecificColumn(matrix, columnIndex);
          print(" Sum of column $columnIndex : $sum ");
          break;
        }
      case 4:
        {
          int sum = calculateSumOfDiagonal(matrix);
          print("Sum of dialgonal elements is: $sum ");
          break;
        }
      case 5:
        {
          int sum = calculateSumIOfAntiDiagonalElements(matrix);
          print("Sum of anti diagonal elements is: $sum ");
          break;
        }
      case 6:
        {
          exit = true;
          print("Exiting the program. ");
          break;
        }
      default:
        {
          print("Invalid choice, please enter the correct choice. ");
          break;
        }
    }
  }
}

int calculateSumOfAllElements(List<List<int>> matrix) {
  int sum = 0;
  for (var row in matrix) {
    for (var num in row) {
      sum += num;
    }
  }
  return sum;
}

int calculateSumOfSpecificRow(List<List<int>> matrix, int rowIndex) {
  int sum = 0;
  for (var num in matrix[rowIndex]) {
    sum += num;
  }
  return sum;
}

int calculateSumOfSpecificColumn(List<List<int>> matrix, int columnIndex) {
  int sum = 0;
  for (var row in matrix) {
    sum += row[columnIndex];
  }
  return sum;
}

int calculateSumOfDiagonal(
  List<List<int>> matrix,
) {
  int sum = 0;
  for (var i = 0; i < matrix.length; i++) {
    sum += matrix[i][i];
  }
  return sum;
}

int calculateSumIOfAntiDiagonalElements(List<List<int>> matrix) {
  int sum = 0;
  for (var i = 0; i < matrix.length; i++) {
    sum = matrix[i][matrix.length - 1 - i];
  }
  return sum;
}
