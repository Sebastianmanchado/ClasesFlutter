/* Un future es la promesa de que pronto habrá un valor para ser usado
Puede fallar -> Manejo excepción  */

void main(){
  print('Inicio del programa');
  httpGet('https://seiboflutter.com/').then((value){
    print(value);
  } ).catchError((err){
    print('Error: $err');
  });
  print('Fin del programa');
}

Future<String> httpGet(String url){
  return Future.delayed(const Duration(seconds: 10)/*tiempo de espera*/, (){
    //return 'Respuesta de la petición HTTP'; /*Funcion a ejecutar*/

    throw 'Error en la petición http';
  });
}
