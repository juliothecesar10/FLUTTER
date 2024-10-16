void main(){
	
  teste('Julio', null, c: null, d: 'Cesar');
}

void teste(
   String a,
   String? b, 
   {
	  String? c,
      required String d,
   }
) 
{ 
  print('$a $b $c $d');
}

