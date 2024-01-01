import 'dart:io';

void main() {
  stdout.write("Enter Array size : ");
  int n = int.parse(stdin.readLineSync()!);

  List A = List<int>.generate(n, (index) => index);

  for (var i = 0; i < n; i++) {
    stdout.write("Enter element a[$i] : ");
    int val = int.parse(stdin.readLineSync()!);
    A[i] = val;
  }

  int Number = A[0];

  A.forEach((element) {
    if (Number < element) Number = element;
  });

  stdout.write("Large number of : $Number");
}
