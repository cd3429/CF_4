import 'dart:io';

void main() {
  print("Enter a number : ");

  try {
    int n = int.parse(stdin.readLineSync()!);
  } on FormatException {
    print("ela bhai number nakhvanu kidhu ne, to number nakh ne");
  }
}
