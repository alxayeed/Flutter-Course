// ignore_for_file: unnecessary_type_check

void main() {
  //Arithmatic Operators
  print("---Arithmatic Operators---".toUpperCase());
  int num1 = 15;
  int num2 = 5;
  var res;

  res = num1 + num2;
  print('Addition: $res');

  res = num1 - num2;
  print('Subtraction: $res');

  res = num1 * num2;
  print('Multiplication: $res');

  res = num1 / num2;
  print('Division: $res');

  res = num1 ~/ num2;
  print('Integer Division: $res');

  res = num1 % num2;
  print('Remainder: $res');

  num1++;
  print('Increment: $num1');

  num2--;
  print('Decrement: $num2');

  //Equality and Relational Operators
  print("---Equality and Relational Operators---".toUpperCase());
  print(num2 > num1);
  print(num2 < num1);
  print(num1 >= 15);
  print(num1 <= 20);
  print(num2 == num1);
  print(num2 != num1);

  //Type Test Operators
  print('---Type Test Operators---'.toUpperCase());
  print(num1 is int);
  print(num1 is! String);

  //Bitwise Operators
  int a = 5;
  int b = 8;
  print('---Bitwise Operators---'.toUpperCase());
  print(a & b);
  print(a | b);
  print(a ^ b);
  print(~b);
  print(a << b);
  print(a >> b);

  //Assignment Operators
  print('---Assignment Operators---'.toUpperCase());
  int x;
  print(x = 10); //simply assign
  print(x += 5); //add then assign
  print(x -= 5); //substract, then assign
  print(x *= 5); //multiply, then assign

  double z = 50.0;
  print(z /= 5); //division, then assign

  int? y;
  print(y ??= 100); //value is null, so assign new value
  print(x ??= 100); //not null, so new value not assigned

  //Logical Operators
  print('---Logical Operators---'.toUpperCase());

  int A = 12;
  int B = 7;
  print(A > 10 && B > 10);
  print(A > 10 || B > 10);
  print(!(B > 10));

  // Conditional Expression
  print('---Conditional Expression---'.toUpperCase());
  print(A > B ? 'A>B' : 'A<B');

  var C;
  print(C ?? 'C is null, so this is printed');
}
