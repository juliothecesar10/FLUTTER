void main(){
	saudacoes("Zé mané", corpo: hello3);
}


void hello3(int i){
  for(int j=0; j < i; j++){
     print('Diga ai ... $j'); 
  }
}

void saudacoes(String nome, {bool mostrarAgora=true, String? cliente, required Function(int) corpo,}){
	print('Saudações do ${nome.toUpperCase()}');
	
  corpo(5);
  
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