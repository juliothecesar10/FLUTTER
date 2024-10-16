// notice that you have to add in the async keyword to be able to await a Future
Future<void> printWithDelay(String message) async {
  await Future.delayed(Duration(seconds: 1));
  print(message);
}

void main() {
  
  printWithDelay("Esta mensagem foi impressa com atraso");
  print("Diga oi, hello");
}