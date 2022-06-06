// ignore_for_file: unused_local_variable

/*
1. Numbers( int, double)
2. String
3. Boolean
4. List
5. Map
6. Set
*/

//enum
enum Status { none, running, stopped, paused }

void main() {
  //int
  int a = 10;

  //double
  double b = 98.0;

  //String
  String text = "This is a String";

  //Boolean
  bool boolval = true;

  //List
  print('\n-----List----\n'.toUpperCase());
  List listVal = [1, 2, 3.4, "List"];
  List<int> intList = [1, 3, 5];
  print(listVal);
  intList.forEach((element) => {print(element)});

  //List attributes
  print(listVal.length);
  print(listVal.reversed);
  print(listVal.hashCode);
  print(listVal.runtimeType);
  print(listVal.first);
  print(listVal.last);
  print([1].single); //returns if list has single element, otherwise StateError
  print(listVal.isEmpty);
  print(listVal.isNotEmpty);
  print(listVal.iterator);

  //List methods
  List newList = [];
  newList.add(0);
  print(newList);
  newList.addAll([1, 2, 3, 5.0]);
  print(newList);
  var val = newList.any((element) {
    return element.runtimeType != int;
  });

  print(val);
  newList.clear();
  print(newList);
  newList.addAll([2, 4, 6, 8, 10]);
  newList.insert(0, "new Element");
  print(newList);
  print(newList.getRange(2, 4));

  //Set
  print('\n-----Set----\n'.toUpperCase());
  Set setVal = {1.0, 2, "a"};
  Set<int> setVal2 = {1, 1, 2, 3}; //duplicate element will be iterated once
  print(setVal2);
  for (var i in setVal) {
    print(i);
  }

  //Map
  print('\n-----Map----\n'.toUpperCase());
  Map mapVal = {'Usrname': 'Al', 'Password': 'pass@123'};
  Map<String, dynamic> mapVal2 = {'Usrname': 'Al', 'age': 26};
  print(mapVal["Usrname"]);
  mapVal2.forEach(
    (key, value) => {print('$key - $value')},
  );

  mapVal.addAll(mapVal2);
  print(mapVal);
  final planets = <int, String>{
    1: 'Mercury',
    2: 'Venus',
    3: 'Earth',
    4: 'Mars'
  };
  final gasGiants = <int, String>{5: 'Jupiter', 6: 'Saturn'};
  final iceGiants = <int, String>{7: 'Uranus', 8: 'Neptune'};
  planets.addEntries(gasGiants.entries);
  planets.addEntries(iceGiants.entries);
  print(planets);

  //enum
  print('\n-----enum----\n'.toUpperCase());
  print(Status.running);
}
