/*

Method overriding means re-defining the functionality in a child class of a parent class
 */

class Animal {
  void move() {
    print("I can move");
  }
}

class Dog extends Animal {
  void move() {
    print("I move by running fast!");
  }
}

class Fish extends Animal {
  void move() {
    print("I move by swimming");
  }
}

class Cat extends Animal {
  void move() {
    print("No moving...only sleeping");
  }
}

void main(List<String> args) {
  Fish fish = Fish();
  Dog dog = Dog();
  Cat cat = Cat();

  fish.move();
  dog.move();
  cat.move();
}
