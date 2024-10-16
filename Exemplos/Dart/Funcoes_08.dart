void main(){
	saudacoes('Zé mané', funcaox: digaAi);

}
void digaAi(int i){
   for (int j = 0; j< i; j++) {
      print('Ola...');
   }
}

void saudacoes(String nome, {required Function funcaox})
{
	print('Saudações do $nome');
	funcaox(7);
}

String agora() {
	DateTime agora = DateTime.now();
  print(agora);
	return agora.toString();
}