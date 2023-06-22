import 'dart:io';

void miniMaxSum(List<int> arr) {
  arr.sort();

  int minSum = arr[0] + arr[1] + arr[2] + arr[3];

  int maxSum = arr[1] + arr[2] + arr[3] + arr[4];

  print('$minSum $maxSum');
}

void main() {
  print('Nhập 5 số nguyên dương:');
  List<int> arr = [];
  int number;

  for (int i = 0; i < 5; i++) {
    do {
      number = int.parse(stdin.readLineSync()!);
      if(number < 0) print('Nhập lại:');
    } while (number <= 0);
    arr.add(number);
  }

  miniMaxSum(arr);
}
