void main(){
   saudacoes();

   String a = agora();
   print(agora());
}

void saudacoes(){
	print(" Saudações do DART Vader");
	print(" May the force be with you");
	print('Agora: ${agora()}');
}

String agora() {
	DateTime agora = DateTime.now();
	return agora.toString();
}