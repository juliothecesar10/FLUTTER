void main(){
	saudacoes('Zé mané', funcaox: agora);

}
void digaAi(){
   print('Ola...');
}

void saudacoes(String nome, {required Function funcaox})
{
	print('Saudações do $nome');
	funcaox();
}

String agora() {
	DateTime agora = DateTime.now();
  print(agora);
	return agora.toString();
}