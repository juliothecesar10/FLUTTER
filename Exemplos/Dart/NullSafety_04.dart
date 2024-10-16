void main(){
	saudacoes('Zé Mané', cliente: 'Maria');
  
}

void saudacoes(
   String nome, {
   bool mostrarAgora=true, 
   String? cliente,})
{
	print('Saudações do ${nome.toUpperCase()}');

  String c = cliente ?? 'Nao informado';
  
  print('Seja bem vindo(a)!, ${c.toUpperCase()}'); 
  	
  if (mostrarAgora) {
	   print('Agora: ${agora()}');
	}
}

String agora() {
	DateTime agora = DateTime.now();
	return agora.toString();
}