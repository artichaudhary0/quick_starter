void main() {
  List<int> numbers = [1, -2, 3, -4, 5, -6, 7, -8, 9, -10];
  try {
    int largestNumber = findLargestNumberInAnArray(numbers);
    print("The Largest Number in the given array is ${largestNumber}");
  } catch (e) {
    print(e.toString());
  }
}

int findLargestNumberInAnArray(List<int> array) {
  if (array.isEmpty) {
    throw ArgumentError("Array is Empty");
  }
  int largestNumber = array[0];

  for (var i = 1; i < array.length; i++) {
    if (array[i] > largestNumber) {
      largestNumber = array[i];
    }
  }
  return largestNumber;
}
