void swapNumber(int first, int second) {
  print("Before Swapping");
  print("First Number : $first \nSecond Number: $second");

  first = first + second; // 2 + 3 = 5
  second = first - second; // 5 - 2 = 3
  first = first - second; // 5 - 3 = 2

  print("Before Swapping");
  print("First Number : $first \nSecond Number: $second");
}

void main() {
  swapNumber(2, 3);
}
