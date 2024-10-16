class EmptyNameException implements Exception {
  String cause;
  EmptyNameException(this.cause);
}
 
void displayName(str) {
  if (str.length > 0) {
    print(str);
  } else {
    throw EmptyNameException('Nome vazio.');
  }
}

void main() {
  var name = '';
  try {
    displayName(name);
  } on EmptyNameException {
    print('O nome esta vazio.');
  }
  print('Bye');
}