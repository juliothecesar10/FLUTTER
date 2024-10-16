void main() {
  String message = "Hello";

  try {
    print("O Character na posição 5 é ${message[5]}.");
  } on RangeError {
    print('O range valido para o indice 10 [0..${message.length - 1}].');
  } catch (e) {
    print(e);
  }

  print('Bye!');
}