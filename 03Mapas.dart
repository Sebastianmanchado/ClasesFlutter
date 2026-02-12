void main(){
  final Map<String, dynamic>pokemon ={
    'name': 'Ditto',

    'hp': 100,

    'isAlive': true,

    'abilities': <String>['impostor'],

    'sprites': <int, String>{
      1:'ditto/front.png',
      2:'ditto/back.png'
    }

  };



  print(pokemon);

  //imprimir partes del mapa 

  print('Name: ${pokemon['name']}');
  print('hp: ${pokemon['hp']}');

  print('Back: ${pokemon['sprites'][1]}');

  print('Front: ${pokemon['sprites'][2]}');
}