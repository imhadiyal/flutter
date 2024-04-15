import 'dart:io';

int sum({required List<int> list}) {
  int sum = 0;
  list.forEach((element) {
    sum += element;
  });
  return sum;
}

void main() {
  List<int> myList = List.generate(5, (index) => index);

  for (int i = 0; i < myList.length; i++) {
    stdout.write("Enter element ${i + 1} of ${myList.length}: ");
    myList[i] = int.parse(stdin.readLineSync() ?? "0");
  }

  print("Sum of all elements in the list: ${sum(list: myList)}\n");
}
