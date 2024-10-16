void main() {
  final list = [1, -10, 30, 1000, 3400];

  int max = list.reduce((max, element) {
    if (max > element) {
      return max;
    } else {
      return element;
    }
  });

  print(max);
}