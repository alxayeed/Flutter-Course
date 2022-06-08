// ignore_for_file: unused_local_variable

void main() {
  //Spread operator
  //with list
  List<String> names = ["Abdulla", "Al", "Sayeed"];
  List<int> ages = [25, 26, 27];
  List result = [...names, ...ages];
  print(result);

  //with Set
  Set<String> namesSet = {"Abdulla", "Al", "Sayeed"};
  Set<int> agesSet = {25, 26, 27};
  Set resultSet = {...namesSet, ...agesSet};
  print(resultSet);

  //with Map
  Map<String, dynamic> namesMap1 = {"name": "Abdulla", "age": 25};
  Map<String, dynamic> namesMap2 = {"age": 26, "gender": "male"};
  var resultMap = {...namesMap1, ...namesMap2};
  print(resultMap);

  //final vs const
  int a = 10;
  final int b = a;
  //b = 15; //final variable can only be set once

  int c = 10;
  const int d = 5; // const must be initialized with constant value
  // const int e = c; // not allowed to assignment later
  // d = 15; //constant variable can't be assigned a value

  //String concatenation and interpolation
  //Concatenation
  String output = "MY" + " Name" + " Al"; //using + operator
  print(output);

  String output2 = "MY" " Name" " Al"; //using literals
  print(output2);

  //interpolation
  String name = 'Al Sayeed';
  int age = 26;
  String output3 = "Hi! My name is $name and I am ${age} years old";
  print(output3);

  //seperating alphabets from a string
  for (int i = 0; i < output3.length; i++) {
    print(output3[i]);
  }
}
