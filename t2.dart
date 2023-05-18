// Find Largest Number in an Array
void main() {
  List<int> numbers = [10, 5, 20, 8, 15];
  int largest = numbers[0];
  
  for (var i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  
  print("The largest number is: $largest");
}
