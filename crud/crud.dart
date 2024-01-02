import 'dart:io';

int get() {
  return int.parse(stdin.readLineSync() ?? "0");
}

void main() {
  int size, choice = 0, ind, up, rem;
  stdout.write("enter a number of length: ");
  size = get();
  List<int> mylist = List.generate(size, (index) {
    stdout.write("${index + 1})enter a element: ");
    return get();
  });
  do {
    stdout.write("1) insert \n");
    stdout.write("2) updet \n");
    stdout.write("3) delete \n");
    stdout.write("4) view \n");
    stdout.write("5) exit \n");
    stdout.write("enter a your chois: ");
    choice = get();
    switch (choice) {
      case 1:
        stdout.write("enter a your index: ");
        ind = get();
        stdout.write("enter a your value: ");
        up = get();
        mylist.insert(ind, up);
        break;
      case 2:
        stdout.write("enter a your index: ");
        ind = get();
        stdout.write("enter a your value: ");
        up = get();
        mylist[ind] = up;
      case 3:
        stdout.write("enter a remvoe element: ");
        rem = get();
        mylist.remove(rem);
        break;
      case 4:
        for (int i = 0; i < mylist.length; i++) {
          print("mylist[$i]: ${mylist[i]}");
        }
        break;
      case 5:
        break;
    }
  } while (choice != 5);
}
