
void main() {
  List<String> nomes = ['julio', 'cesar', 'jhon', 'snow'];
  
  print(nomes);
  
  for(String nome in nomes.sublist(2,4)){
    print(nome);
  }
}
