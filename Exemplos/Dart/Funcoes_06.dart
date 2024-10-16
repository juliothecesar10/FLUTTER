void main(){
	saudacoes('Zé Mané', cliente: 'Maria', mostrarCliente: true);

}

void saudacoes(String nome, {
   bool mostrarAgora=true, 
   bool mostrarCliente=false,
   String cliente = '',
}){
   
	print('Saudações do $nome');

  if (mostrarCliente) {
     print('Seja bem vindo(a)!, $cliente'); 
  }
	
  if (mostrarAgora) {
	   print('Agora: ${agora()}');
	}
}

String agora() {
	DateTime agora = DateTime.now();
	return agora.toString();
}