// Array Operations Menu
import 'dart:io';

void main() {
  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  int choice;

  do {
    print("MENU");
    print("1. Sum of all elements");
    print("2. Sum of specific row");
    print("3. Sum of specific column");
    print("4. Sum of diagonal elements");
    print("5. Sum of antidiagonal elements");
    print("0. Exit");
    print("Enter your choice: ");
    choice = int.parse(stdin.readLineSync());

    switch (choice) {
      case 1:
        int sum = 0;
        for (var row in matrix) {
          sum += row.reduce((a, b) => a + b);
        }
        print("Sum of all elements: $sum");
        break;

      case 2:
        print("Enter the row index (0-2): ");
        int rowIndex = int.parse(stdin.readLineSync());
        if (rowIndex >= 0 && rowIndex < matrix.length) {
          int sum = matrix[rowIndex].reduce((a, b) => a + b);
          print("Sum of row $rowIndex: $sum");
        } else {
          print("Invalid row index.");
        }
        break;

      case 3:
        print("Enter the column index (0-2): ");
        int columnIndex = int.parse(stdin.readLineSync());
        if (columnIndex >= 0 && columnIndex < matrix.length) {
          int sum = 0;
          for (var row in matrix) {
            sum += row[columnIndex];
          }
          print("Sum of column $columnIndex: $sum");
        } else {
          print("Invalid column index.");
        }
        break;

      case 4:
        int sum = 0;
        for (var i = 0; i < matrix.length; i++) {
          sum += matrix[i][i];
        }
        print("Sum of diagonal elements: $sum");
        break;

      case 5:
        int sum = 0;
        for (var i = 0; i < matrix.length; i++) {
          sum += matrix[i][matrix.length - 1 - i];
        }
        print("Sum of antidiagonal elements: $sum");
        break;

      case 0:
        print("Exiting the program...");
        break;

      default:
        print("Invalid choice. Please try again.");
    }

    print(""); // Empty line for clarity
  } while (choice != 0);
}
