/* Un future es la promesa de que pronto habrá un valor para ser usado
Puede fallar -> Manejo excepción  */

void main() async{
  print('Inicio del programa');

  try{
    final value = await httpGet('https://seiboflutter.com/');
    print(value);
    
  } catch(err){
    print('Tenemos un error :( -> $err');
  }

  print('Fin del programa');
}

//Con async Siempre el return es un future 

Future<String> httpGet(String url) async {

  await Future.delayed(const Duration(seconds: 10));/*tiempo de espera*/

  throw 'Error en la peticion'; 
  //return 'Respuesta de la petición HTTP'; /*Funcion a ejecutar*/
}