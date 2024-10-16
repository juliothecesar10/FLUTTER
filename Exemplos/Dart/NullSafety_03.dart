void main(){
	saudacoes('Zé Mané', cliente: 'Maria');
  
}

void saudacoes(
   String nome, {
   bool mostrarAgora=true, 
   String? cliente,})
{
	print('Saudações do ${nome.toUpperCase()}');

  //if (cliente!= null){
    print('Seja bem vindo(a)!, ${cliente.toUpperCase()}'); 
  //}
	
  if (mostrarAgora) {
	   print('Agora: ${agora()}');
	}
}

String agora() {
	DateTime agora = DateTime.now();
	return agora.toString();
}