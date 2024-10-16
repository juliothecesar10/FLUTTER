
void main() {
  List<int> lista = [1, 2, 3];

  lista.add(6);

  List<int> outraLista = [9,10,11];
  
  lista.addAll(outraLista);
  
  print(lista);
}
