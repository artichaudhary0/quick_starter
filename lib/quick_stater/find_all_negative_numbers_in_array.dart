void main() {
  List<int> numbers = [1, -2, 3, -4, 5, -6, 7, -8, 9, -10];
  printNegativeElementsInAnArray(numbers);
}

void printNegativeElementsInAnArray(List<int> array) {
  for (var element in array) {
    if (element < 0) {
      print(element);
    }
  }
}
