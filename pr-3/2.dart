import 'dart:ffi';
import 'dart:io';

class customer {
  int? id;
  String? name;
  int? contect;
  int? cart;
  int? pid;
  String? pro_name;
  int? price;
  int A = 0;
  int quantity = 0;
  int? aumount;

  setCustomerdata() {
    print("\t\t|===========================|");
    print("\t\t|    🛒 CUSTOMER DATA 🛒    |");
    print("\t\t|===========================|");
    stdout.write("\n\n* ENTER YOUR ID = ");
    id = int.parse(stdin.readLineSync() ?? "0");
    stdout.write("* ENTER YOUR NAME = ");
    name = stdin.readLineSync() ?? "name";
    stdout.write("* ENTER YOUR CONTECT NUMBER = ");
    contect = int.parse(stdin.readLineSync() ?? "0");
  }

  cart_product() {
    do {
      stdout.write("1.[TV 📺]\n");
      stdout.write("2.[SCHOOL BAG 🎒]\n");
      stdout.write("3.[HADEPHONE 🎧]\n");
      stdout.write("4.[COUMPUTER 🖥️]\n");
      stdout.write("5.[WATCH ⌚]\n");
      stdout.write("6.[MOBILE 📱]\n");
      stdout.write("7.[BILL ]\n");
      stdout.write("0.[EXIT ❌]\n");

      stdout.write("* ENTER CHOOSE ONE = ");
      cart = int.parse(stdin.readLineSync() ?? "0");
      switch (cart) {
        case 1:
          A = 45000;
          print("\t\t|===========================|");
          print("\t\t|          📺 TV 📺         |");
          print("\t\t|===========================|");
          print("* SERIAL NO. = 100");
          print("* PRODUCT NAME = TV");
          print("* PRODUCT PRICE =  $A ");
          stdout.write("* ENTER QUANTITY = ");
          quantity = int.parse(stdin.readLineSync() ?? "0");
          break;
        case 2:
          A = 3000;
          print("\t\t|===========================|");
          print("\t\t|     🎒 SCHOOL BAG 🎒      |");
          print("\t\t|===========================|");
          print("* SERIAL NO. = 200");
          print("* PRODUCT NAME = SCHOOL BAG ");
          print("* PRODUCT PRICE =  $A ");
          stdout.write("* ENTER QUANTITY = ");
          quantity = int.parse(stdin.readLineSync() ?? "0");
          break;
        case 3:
          A = 25000;
          print("\t\t|===========================|");
          print("\t\t|      🎧 HADEPHONE 🎧      |");
          print("\t\t|===========================|");
          print("* SERIAL NO. = 300");
          print("* PRODUCT NAME = HADEPHONE ");
          print("* PRODUCT PRICE =  $A ");
          stdout.write("* ENTER QUANTITY = ");
          quantity = int.parse(stdin.readLineSync() ?? "0");
          break;
        case 4:
          A = 60000;
          print("\t\t|===========================|");
          print("\t\t|      🖥️ COUMPUTER 🖥️        |");
          print("\t\t|===========================|");
          print("* SERIAL NO. = 400");
          print("* PRODUCT NAME = COUMPUTER");
          print("* PRODUCT PRICE =  $A ");
          stdout.write("* ENTER QUANTITY = ");
          quantity = int.parse(stdin.readLineSync() ?? "0");
          break;

        case 5:
          A = 15000;
          print("\t\t|===========================|");
          print("\t\t|        ⌚ WATCH ⌚       |");
          print("\t\t|===========================|");
          print("* SERIAL NO. = 500");
          print("* PRODUCT NAME = WATCH");
          print("* PRODUCT PRICE =  $A ");
          stdout.write("* ENTER QUANTITY = ");
          quantity = int.parse(stdin.readLineSync() ?? "0");
          break;
        case 6:
          A = 150000;
          print("\t\t|===========================|");
          print("\t\t|       📱 MOBILE 📱       |");
          print("\t\t|===========================|");
          print("* SERIAL NO. = 600");
          print("* PRODUCT NAME = MOBILE");
          print("* PRODUCT PRICE =  $A ");
          stdout.write("* ENTER QUANTITY = ");
          quantity = int.parse(stdin.readLineSync() ?? "0");
          break;

        case 7:
          print("\t\t|===========================|");
          print("\t\t|       ..YOUR BILL..       |");
          print("\t\t|===========================|");
          print("ID =        $id");
          print("NAME =      $name");
          print("CONTECT =    $contect");
          print("AMOUNT =    ${A * quantity}");
          break;

        case 0:
          print("\n\n\t\t...EXIT ❌...\n\n");
          break;

        default:
          print("\n\n\t\t..❗❗ INVALID INPUT ❗❗..\n\n");
      }
    } while (cart != 0);
  }
}

void main(List<String> args) {
  customer C1 = customer();
  C1
    ..setCustomerdata()
    ..cart_product();
}
