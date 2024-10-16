void main() {
  final list = ['a', 'w', 'e', 's', 'o', 'm', 'e', '!'];

  String awesome = list.reduce((value, element) => value + element);

  print(awesome);
}