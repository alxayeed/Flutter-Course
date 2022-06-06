void main() {
  //for
  print('for loop'.toUpperCase());
  for (int i = 0; i < 5; i++) {
    print('The value is: $i');
  }

  //for..in
  print('\nfor in loop'.toUpperCase());
  List<String> divisions = [
    "Dhaka",
    "CTG",
    "Khulna",
    "Rajshahi",
    "Barishal",
    "Sylhet"
  ];

  for (var div in divisions) {
    print(div);
  }

  //for..each
  print('\nfor each loop'.toUpperCase());
  divisions.forEach((var div) => print(div));

  //while
  print('\nwhile loop'.toUpperCase());
  int num = 5;
  while (num <= 10) {
    print('$num is not greater than 10');
    num++;
  }

  //while
  print('\nwhile loop'.toUpperCase());
  int num2 = 10;
  do {
    print('$num2 is not greater than 10');
    num2++;
  } while (num2 <= 10);
}
