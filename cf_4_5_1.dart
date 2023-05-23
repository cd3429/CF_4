import 'dart:io';

void main() {
  print("Enter a number : ");

  try {
    int n = int.parse(stdin.readLineSync()!);
  } on ArgumentError {
    print("ela bhai number nakhvanu kidhu ne, to number nakh ne");
  } catch (e) {
    print(e);
  } finally {
    print("I will come");
  }
}
