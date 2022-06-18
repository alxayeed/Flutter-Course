void printInOrder(int a, int b, int c, int d) {
  List<num> numberList = [a, b, c, d];
  numberList.sort();
  numberList.forEach((element) {
    print(element);
  });
}

void main(List<String> args) {
  printInOrder(29, 45, 12, 32);
}
