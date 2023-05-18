// Print Negative Elements in an Array
void main() {
  List<int> numbers = [2, -5, 3, -8, 0, -1, 7, -4, 9];
  
  for (var num in numbers) {
    if (num < 0) {
      print(num);
    }
  }
}
