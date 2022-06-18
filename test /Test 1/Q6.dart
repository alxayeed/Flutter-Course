/* 
Error handling in dart

Dart uses try, on, catch and finally keywords to handle exception. 
Each of this keyword represents a block of code to perform specific type of functionality to avoid handle exception
*/

void main(List<String> args) {
  try {
    print(10 % 3);
  } on IntegerDivisionByZeroException catch (e) {
    print("Can't be divided by Zero");
    print(e);
  } finally {
    print("Finished");
  }
}
