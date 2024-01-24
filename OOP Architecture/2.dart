import 'dart:io';

class Customers {
  late int id;
  late String name;
  late int number;

  void setCustomerData() {
    stdout.write("Enter customer Id : ");
    id = int.parse(stdin.readLineSync() ?? "0");
    stdout.write("Enter customer name : ");
    name = stdin.readLineSync() ?? "0";
    stdout.write("Enter customer number : ");
    number = int.parse(stdin.readLineSync() ?? "0");
  }

  void verities() {
    print("1. Grocery");
    print("2. Mobiles");
    print("3. Fashion");
    print("4. Electronics");
    print("5. Home & furniture");
    stdout.write("Enter your choice : ");
    int choice = int.parse(stdin.readLineSync() ?? "6");

    switch (choice) {
      case 1:
        grocery();
      case 2:
        mobile();
    }
  }

  void grocery() {}

  void mobile() {
    print("1. Apple 15 Pro Max");
    print("2. One Pluse 12");
    print("3. Samgung 24 Ultra");
    print("4. Pixcel 8 pro");
    stdout.write("ENter your choice : ");
    int choice = int.parse(stdin.readLineSync() ?? "5");
    switch (choice) {
      case 1:
        print("\n\nApple iPhone 15 Pro Max (1 TB) - Natural Titanium");
        print("Price ₹1,98,900");
        print("Enter");
        break;
    }
  }
}
