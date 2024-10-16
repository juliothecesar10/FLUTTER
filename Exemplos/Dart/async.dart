
void main() async {
  print('Inicio');
  bool sucesso = await auxiliar();
  print('Fim $sucesso');
}

Future<bool> auxiliar() async {
  String usuario = await reqUsuario();
  try{
    bool sucesso = await autenticar(usuario);
    return sucesso;
  } catch(e) {
    return false;
  }
}


Future<String> reqUsuario() async{
  await Future.delayed(Duration(seconds:2));
  print('Encontrou usuario Zé Mané');
  return 'Zé Mané';
}

Future<bool> autenticar(String usuario) async{
  await Future.delayed(Duration(seconds:2));
  if(usuario == 'Zé Mané') return true;
  throw UsuarioInvalido();
}

class UsuarioInvalido implements Exception{}


void main2() {
  print('Inicio');
  reqUsuario().then((usuario)) {
    print('Encontrou!!! $usuario');
    autenticar(usuario).then((autenticado)){
      print(autenticado);
    }).catchError((e) {
      print(e);
    });
  });
  print('fim');
}
