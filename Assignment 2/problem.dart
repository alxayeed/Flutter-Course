void main() {
  int? a; //in main() function's scope, a is null;

  addTwovalue(int a) {
    a = a; // a is set to a value, but only inside this function's scope
    print(a);
    print("done");
  }

  addTwovalue(10);
  print(a); // a is not set to any value in main() scope, so it is null.

  //Dart is a 'Lexically Scoped' language
}
