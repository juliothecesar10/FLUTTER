void main() {
  final list = ['Dart', 'is', 'awesome'];

  // compute the sum of all length
  int sumOfLenght =
      list.fold(0, (previousValue, element) => previousValue + element.length);

  print(sumOfLenght);
}