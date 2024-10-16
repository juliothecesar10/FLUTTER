void main() {
  String message = "Hello";

  try {
    print("O caracter na posicao 5 é ${message[5]}.");
  } catch (e) {
    print(e);
  }

  print('Bye!');
}