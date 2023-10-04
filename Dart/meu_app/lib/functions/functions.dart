void main(List<String> arguments) {
  printHelloWorld();
  printName("Erick");
  print(returnNumber());
}

void printHelloWorld() {
  print("Hello World");
}

void printName(String name) {
  print("My name is $name");
}

int returnNumber() {
  return 20;
}
