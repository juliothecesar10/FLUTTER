
void main() {
  List<String> nomes = ['julio', 'cesar', 'jhon', 'snow'];
  
  print(nomes);
  
  for(int i=2; i<=nomes.length-1;i++){
    print(nomes[i].toUpperCase());
  }
  
  for(String nome in nomes){
    print(nome);
  }
}
