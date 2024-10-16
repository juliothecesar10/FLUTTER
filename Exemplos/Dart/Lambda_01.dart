void main() {
  var a = sumOf(3);
  var b = a(8);
  print(b);
  
}

Function sumOf(int a){
  return (int i) =>  a + 1;
}