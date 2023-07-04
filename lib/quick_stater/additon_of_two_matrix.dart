import 'dart:io';

void main() {
  List<List<int>> matrix1 = [];
  List<List<int>> matrix2 = [];
  print("Enter elements for matrix 1: ");
  matrix1 = readMatrix();
  print("Enter elements for matrix 2: ");
  matrix2 = readMatrix();
  List<List<int>> result = addMatrix(matrix1, matrix2);
  print("\nMatrix 1:");
  displayMatrix(matrix1);
  print("\nMatrix 2:");
  displayMatrix(matrix2);
  print("\nAddition of Matrix :");
  displayMatrix(result);
}

List<List<int>> readMatrix() {
  List<List<int>> matrix = [];
  for (var i = 0; i < 3; i++) {
    List<int> row = [];
    for (var j = 0; j < 3; j++) {
      print("Enter element at index [$i][$j]: ");
      var element = int.parse(stdin.readLineSync()!);
      row.add(element);
    }
    matrix.add(row);
  }
  return matrix;
}

List<List<int>> addMatrix(List<List<int>> matrix1, List<List<int>> matrix2) {
  List<List<int>> result = [];
  for (var i = 0; i < 3; i++) {
    List<int> row = [];
    for (var j = 0; j < 3; j++) {
      var sum = matrix1[i][j] + matrix2[i][j];
      row.add(sum);
    }
    result.add(row);
  }
  return result;
}

void displayMatrix(List<List<int>> matrix) {
  for (var i = 0; i < 3; i++) {
    for (var j = 0; j < 3; j++) {
      stdout.write("${matrix[i][j]} ");
    }
    stdout.write("\n");
  }
}
