void main() {
  //default parameters
  defaultParam(5, 10, 15);

  //optional positional
  optionalPositional(6, 7, 8);
  optionalPositional(6, 7);

  //optional named
  optionalNamed(50, b: 60, c: 70);
  optionalNamed(51, b: 61);
  optionalNamed(52, c: 72);

  // higher order function
  //function as parameter
  funcAsParam(optionalNamed);

  //function as variable and return type
  Function myFunc = funcAsReturnType();
  myFunc(100, 200);
}

defaultParam(a, b, c) {
  print("$a $b $c");
}

optionalPositional(a, [b, c]) {
  print("$a $b $c");
}

optionalNamed(a, {b, c}) {
  print("$a $b $c");
}

funcAsParam(Function func) {
  func(52, c: 72);
}

funcAsReturnType() {
  addTwo(a, b) => print(a + b);
  return addTwo;
}
