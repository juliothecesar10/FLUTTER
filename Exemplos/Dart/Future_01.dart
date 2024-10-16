void main() {
  print("Bem vindo");
  getInfo();
  print("a");
}

void getInfo() async {
  String info = await middleMessage();
  print(info);
}

Future<String> middleMessage()
{
  return Future.delayed(Duration(seconds:2),()=>"Programação Dart");  
}

