import 'dart:io';

void main() {
  List<List<int>> a = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];
  List<List<int>> b = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  print("\n----:Array a:----\n");
  for (var i = 0; i < 3; i++) {
    for (var j = 0; j < 3; j++) {
      stdout.write('Enter element of a[$i][$j] : ');
      int val = int.parse(stdin.readLineSync()!);
      a[i][j] = val;
    }
  }

  print("\n----:Array b:----\n");
  for (var i = 0; i < 3; i++) {
    for (var j = 0; j < 3; j++) {
      stdout.write('Enter element of a[$i][$j] : ');
      int val = int.parse(stdin.readLineSync()!);
      a[i][j] = val;
    }
  }

  print("\n----:Sum of Array:----\n");
  for (var i = 0; i < 3; i++) {
    for (var j = 0; j < 3; j++) stdout.write("${a[i][j] + b[i][j]} ");
    print('');
  }
}
