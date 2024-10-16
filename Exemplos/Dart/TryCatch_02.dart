void fn() {
  String message = "Hello";
  try {
    print("O Character na posição 5 é ${message[5]}.");
  } catch (e, s) {
    print(e);
    print(s);
  }
}

void main() {
  fn();
  print('Bye!');
}
