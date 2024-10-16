void main() {
  final list = [1, 5, 4];

  int sum = list.reduce((value, element) => value + element);

  print('The sum of element of list : $sum');
}