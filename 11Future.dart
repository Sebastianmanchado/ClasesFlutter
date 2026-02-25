/* Un future es la promesa de que pronto habrá un valor para ser usado
Puede fallar -> Manejo excepción  */

void main() async{
  print('Inicio del programa');

  try{ //hace esto
    final value = await httpGet('https://seiboflutter.com/');
    print('Exito $value');
    
  } on Exception  { //on me permite reaccionar a cada tipo de ocurrencia 
    print('Tengo una excepción');
  } catch(err){ //si falla hace esto
    print('Tenemos un error :( -> $err');
  } finally { // y finalmente esto 
    print('Fin del try y catch');
  }

  print('Fin del programa');
}

//Con async Siempre el return es un future 

Future<String> httpGet(String url) async {

  await Future.delayed(const Duration(seconds: 10));/*tiempo de espera*/
  //throw Exception('No hay parametros en el url'); 
  throw 'Error en la peticion'; 
  //return 'Respuesta de la petición HTTP'; /*Funcion a ejecutar*/S
}