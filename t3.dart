// Array Operations Menu
void main() {
  List<int> numbers = [];
  int choice;
  
  do {
    print("MENU");
    print("1. Insert");
    print("2. Delete");
    print("3. Update");
    print("4. View");
    print("0. Exit");
    print("Enter your choice: ");
    choice = int.parse(stdin.readLineSync());
    
    switch (choice) {
      case 1:
        print("Enter the element to insert: ");
        int element = int.parse(stdin.readLineSync());
        numbers.add(element);
        print("Element inserted successfully.");
        break;
        
      case 2:
        print("Enter the index to delete: ");
        int index = int.parse(stdin.readLineSync());
        if (index >= 0 && index < numbers.length) {
          numbers.removeAt(index);
          print("Element deleted successfully.");
        } else {
          print("Invalid index.");
        }
        break;
        
      case 3:
        print("Enter the index to update: ");
        int index = int.parse(stdin.readLineSync());
        if (index >= 0 && index < numbers.length) {
          print("Enter the new value: ");
          int newValue = int.parse(stdin.readLineSync());
          numbers[index] = newValue;
          print("Element updated successfully.");
        } else {
          print("Invalid index.");
        }
        break;
        
      case 4:
        print("Elements in the array: $numbers");
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
