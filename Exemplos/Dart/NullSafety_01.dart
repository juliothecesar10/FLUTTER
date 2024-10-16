void main(){
	saudacoes('Zé Mané');

}

void saudacoes(
   String nome, {
   bool mostrarAgora=true, 
   String? cliente,
}){
   
	print('Saudações do $nome');

  print('Seja bem vindo(a)!, $cliente'); 

	
  if (mostrarAgora) {
	   print('Agora: ${agora()}');
	}
}

String agora() {
	DateTime agora = DateTime.now();
	return agora.toString();
}