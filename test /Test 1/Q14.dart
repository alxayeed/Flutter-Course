/*
Higher order function is a function that can be used just like any other variables.
That means, a function can be passed as argument, or returned from a function like normal variables.

 */

void main(List<String> args) {
  //function as variable and return type
  Function myFunc = funcAsReturnType();
  myFunc(100, 200);
}

funcAsReturnType() {
  addTwo(a, b) => print(a + b);
  return addTwo;
}
