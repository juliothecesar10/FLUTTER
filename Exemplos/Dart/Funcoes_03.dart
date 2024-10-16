void main(){
	saudacoes('Zé mané', false);
	saudacoes('Holmer Simpson', true);
}

void saudacoes(String nome, bool mostrarAgora){
	print('Saudações do $nome');
	print('Seja bem vindo(a)!');
	if (mostrarAgora) {
	   print('Agora: ${agora()}');
	}
}

String agora() {
	DateTime agora = DateTime.now();
	return agora.toString();
}