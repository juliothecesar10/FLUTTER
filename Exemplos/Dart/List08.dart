
void main() {
  List<String> nomes = ['julio', 'cesar', 'jhon', 'snow'];
  
  print(nomes);
  
  nomes.sublist(2).forEach((nome){
    print(nome);
  });
}
