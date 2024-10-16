void main(){
	saudacoes('Zé mané', false);
	saudacoes('Holmer Simpson');
}

void saudacoes(String nome, [bool mostrarAgora=true]){
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