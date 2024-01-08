import 'dart:io';

void main() {
  stdout.write("enter a number of student: ");
  int n = int.parse(stdin.readLineSync() ?? "0");
  List<Map<String, dynamic>> mylist = List.generate(n, (index) {
    stdout.write("enter a id: ");
    int id = int.parse(stdin.readLineSync() ?? "0");
    stdout.write("enter a name: ");
    String name = stdin.readLineSync() ?? "0";
    stdout.write("enter a per: ");
    double per = double.parse(stdin.readLineSync() ?? "0");
    return {
      "id": id,
      "name": name,
      "per": per,
    };
  });
  double totalper = 0.0;
  mylist.forEach((element) {
    totalper += element['per'];
  });
  double avg = totalper / mylist.length;
  print("avrage:$avg");
}
