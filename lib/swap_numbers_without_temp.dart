void swapNumber(int first, int second) {
  print("Before Swapping");
  print("First Number : $first \nSecond Number: $second");

  first = first + second;
  second = first - second;
  first = first - second;

  print("Before Swapping");
  print("First Number : $first \nSecond Number: $second");
}

void main() {
  swapNumber(2, 3);
}
