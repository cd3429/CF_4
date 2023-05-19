// 6. Create a Dart Class Book with data member book_id, title and author. Initialize all member variable value using default and parameterized constructor.

class Book {
  int? id;
  String? title;
  String? author;

  Book() {
    print("Welcome to the Book Database : ");
  }

  Book.entry(id, title, author) {
    this.id = id;
    this.title = title;
    this.author = author;
  }

  BookDisplay() {
    print("Book ID : $id \nBook Title : $title \nBook Author : $author");
  }
}

void main() {
  Book b1 = Book();
  Book b2 = Book.entry(101, "Goa", "Bhavin");
  b2.BookDisplay();
}
