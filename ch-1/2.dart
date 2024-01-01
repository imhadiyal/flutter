import 'dart:io';

void main() {
  print("enter a:");
  int a = int.parse(stdin.readLineSync()!);
  print("enter b:");
  int b = int.parse(stdin.readLineSync()!);
  int c = a + b;
  print("sum is:$c");
}
