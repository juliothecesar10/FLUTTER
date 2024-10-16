void main(){
	saudacoes("Zé mané", corpo: hello);
}

void hello(){
  print('Ola 1');
  print('Ola 2');
  print('Ola 3');
}

void saudacoes(String nome, {bool mostrarAgora=true, String? cliente, required Function corpo,}){
	print('Saudações do ${nome.toUpperCase()}');
	
  corpo();
  
  String c= cliente?? 'Não iformado';
  
  print ('Seja bem-vindo(a),${c.toUpperCase()}!');
  
	if (mostrarAgora) {
	   print('Agora: ${agora()}');
	}
}

String agora() {
	DateTime agora = DateTime.now();
	return agora.toString();
}