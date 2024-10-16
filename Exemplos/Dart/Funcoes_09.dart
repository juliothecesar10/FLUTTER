void main(){
	saudacoes("Zé mané");
	saudacoes("Zé mané", mostrarAgora: false);
}

void saudacoes(String nome, {bool mostrarAgora=true, String sep ='-'}){
	print(sep * 20);
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