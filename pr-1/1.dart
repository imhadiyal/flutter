import 'dart:io';

void main() {
  stdout.write("Enter a array: ");
  int a = int.parse(stdin.readLineSync()!);

  List<int> nub = [];

  for (int i = 0; i < a; i++) {
    stdout.write("Enter element $i: ");
    int element = int.parse(stdin.readLineSync()!);
    nub.add(element);
  }

  print("Negative elements:");
  nub.forEach((number) {
    if (number < 0) {
      print(number);
    }
  });
}
