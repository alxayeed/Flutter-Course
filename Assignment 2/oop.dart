void main() {
  // class and object
  Animal animal = new Animal();
  animal.sleeps();

  // Inheritance
  Cat cat = new Cat();
  print(cat.legs); //inherited property
  print(cat.sound); //own property

  // overriding
  cat.type = "Super Lazy";
  print(cat.type);
  cat.sleeps();

  // abstract
  // Car car = new Car(); //abstract class can't be instantiated
  BMW bmw = new BMW();
  bmw.sayBrand();
}

class Animal {
  int legs = 4;
  String type = "lazy";

  void sleeps() {
    print("I can sleep");
  }
}

class Cat extends Animal {
  String sound = "Mew";

  @override
  set type(String _type) {
    super.type = "I am " + _type;
  }

  @override
  void sleeps() {
    super.sleeps();
    print("I sleep 15 hours a day");
  }
}

abstract class Car {
  sayBrand();
}

class BMW extends Car {
  @override
  sayBrand() {
    print("I am BMW");
  }
}
