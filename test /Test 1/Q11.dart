/*
The null-aware operator lets dart execute expression based on whether any value is null or not.
 */

void main(List<String> args) {
  var name = "Al Sayeed";

  String result = name ?? "I have no name";
  print(result);
}
