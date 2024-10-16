void main() {
  String message = "Hello";
  try {
    print("O Character na posição 5 é ${message[5]}.");
  } on RangeError catch (e) {
    print(e);
  } catch (e) {
    print(e);
  }
  print('Bye!');
}