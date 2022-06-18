/*
In OOP , some class properties can be set private so that this values are not directly accessible outside of the class.
To access and modify this properties, the class can have methods. These methods access or modify from inside the class,
 and an instance should use this methods to access or modify those properties.

 the method that is used to access private fields is called getter or accessor
 the method that is used to modify private fields is called setter or mutator


 */

class Person {
  String? _name;

  set setName(String name) {
    _name = name;
  }

  String? getName() {
    return _name;
  }
}

void main(List<String> args) {
  Person person = Person();
  person.setName = "Al Sayeed";
  print(person.getName());
}
