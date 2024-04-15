import 'dart:io';

class Customer {
  int cust_id;
  String cust_name;
  String cust_contact;
  List<Map<String, dynamic>> cust_cart = [];

  Customer(this.cust_id, this.cust_name, this.cust_contact);

  void addToCart(int pro_id, String pro_name, int pro_qty, double pro_price) {
    cust_cart.add({
      'pro_id': pro_id,
      'pro_name': pro_name,
      'pro_qty': pro_qty,
      'pro_price': pro_price,
    });
  }

  double calculateTotal() {
    double total = 0;
    for (var item in cust_cart) {
      total += item['pro_qty'] * item['pro_price'];
    }
    return total;
  }

  double calculateDiscount(double total) {
    double discount = 0;
    if (total >= 500 && total < 1500) {
      discount = total * 0.1;
    } else if (total >= 1500 && total < 3500) {
      discount = total * 0.2;
    } else if (total >= 3500 && total < 6500) {
      discount = total * 0.25;
    } else if (total >= 6500) {
      discount = total * 0.3;
    }
    return discount;
  }

  void displayDetails() {
    print('Customer ID: $cust_id');
    print('Customer Name: $cust_name');
    print('Customer Contact: $cust_contact');
    print('Products Purchased:');
    for (var item in cust_cart) {
      print( 'Product ID: ${item['pro_id']}, Name: ${item['pro_name']}, Quantity: ${item['pro_qty']},Price: ${item['pro_price']}');
    }
    double total = calculateTotal();
    double discount = calculateDiscount(total);
    double finalAmount = total - discount;
    print('Total Amount: \$${total.toStringAsFixed(2)}');
    print('Discount Amount: \$${discount.toStringAsFixed(2)}');
    print('Final Amount after Discount: \$${finalAmount.toStringAsFixed(2)}');
  }
}

void main() {
  List<Customer> customers = [];

  while (true) {
    print('1. Add Customer');
    print('2. Add Product to Customer Cart');
    print('3. Calculate and Display Customer Bill');
    print('4. Search Customer by ID');
    print('5. Exit');
    stdout.write('Enter your choice: ');
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      stdout.write('Enter Customer ID: ');
      int cust_id = int.parse(stdin.readLineSync()!);
      
      stdout.write('Enter Customer Name: ');
      String cust_name = stdin.readLineSync()!;
      
      stdout.write('Enter Customer Contact: ');
      String cust_contact = stdin.readLineSync()!;
      
      Customer customer = Customer(cust_id, cust_name, cust_contact);
      customers.add(customer);
      
      print('Customer Added Successfully!');
     } else if (choice == 2) {
      
      stdout.write('Enter Customer ID: ');
      int cust_id = int.parse(stdin.readLineSync()!);
      
      var customer =
          customers.firstWhere((element) => element.cust_id == cust_id);
      if (customer != null) {
        
        stdout.write('Enter Product ID: ');
        int pro_id = int.parse(stdin.readLineSync()!);
        
        stdout.write('Enter Product Name: ');
        String pro_name = stdin.readLineSync()!;
        
        stdout.write('Enter Product Quantity: ');
        int pro_qty = int.parse(stdin.readLineSync()!);
        
        stdout.write('Enter Product Price: ');
        double pro_price = double.parse(stdin.readLineSync()!);
        
        customer.addToCart(pro_id, pro_name, pro_qty, pro_price);
        print('Product Added to Cart Successfully!');
      } else {
        print('Customer not found!');
      }
    } else if (choice == 3) {
      stdout.write('Enter Customer ID: ');
      int cust_id = int.parse(stdin.readLineSync()!);
      var customer =
          customers.firstWhere((element) => element.cust_id == cust_id);
      if (customer != null) {
        customer.displayDetails();
      } else {
        print('Customer not found!');
      }
    } else if (choice == 4) {
      stdout.write('Enter Customer ID to search: ');
      int cust_id = int.parse(stdin.readLineSync()!);
      
      var customer = customers.firstWhere((element) => element.cust_id == cust_id);
      if (customer != null) {
        print('Customer Found:');
        customer.displayDetails();
      } else {
        print('Customer not found!');
      }
    } else if (choice == 5) {
      print('Exiting...');
      break;
    } else {
      print('Invalid choice! Please try again.');
    }
  }
}
