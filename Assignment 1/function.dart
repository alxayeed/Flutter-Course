//no return type, no parameters
void greet() {
  print("Hi! I am a function!");
}

//with return type, but no parameters
int addition() {
  int result = 100;
  return result;
}

//with return type &  parameters
int additionTwo(int a, int b) {
  int result = a + b;
  return result;
}

//optional postional parameters
void optionalPositional(int a, [int b = 0, int? c]) {
  //b has defalut value 0
  print('Optional Postional : a is : $a, b is : $b, c is : $c');
}

//optional named parameters
void optionalNamed(int a, {int b = 0, int? c}) {
  //b has defalut value 0
  print('Optional Named : a is : $a, b is : $b, c is : $c');
}

//arrow/ flat/ lambda function
void lambdaFunc() =>
    print('This is a lambda function AKA arrow function AKA flat function');

void main() {
  greet();

  print(addition());

  print(additionTwo(5, 10));

  optionalPositional(5, 10, 15);
  optionalPositional(5, 10);
  optionalPositional(5);

  optionalNamed(1, b: 3, c: 5);
  optionalNamed(1, b: 3);
  optionalNamed(1, c: 5);
  optionalNamed(1);

  lambdaFunc();
}
