/*
Dart does not have any explicit way to define an interface. A class that has only abstract methods (methods with deflation but no definition).  
this abstract methods must be overridden by the class that implements this class. This is how interface is implemented in dart. 
 */

class Payment {
  void byCash() {}
}

class Ecommerce implements Payment {
  @override
  void byCash() {
    print("Payment with cash");
  }
}

void main(List<String> args) {
  Ecommerce ecc = Ecommerce();
  ecc.byCash();
}
