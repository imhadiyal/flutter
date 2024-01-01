import 'dart:io';

void main() {
  print("enter any number:");
  int a = int.parse(stdin.readLineSync()!);
  int b;
  for (int i = 1; i <= 10; i++) {
    b = a * i;
    print("$a*$i=$b");
  }
}
