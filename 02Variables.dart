void main (){
  final String pokemon = 'Ditto'; //Siempre final hasta que haya que cambiarlo
  final int hp = 100; 
  final bool isAlive = true;
  final List<String> abilities = ['impostor']; 
  final List<String> sprities = ['ditto/front.png', 'ditto/back.png']; 


  dynamic errorMessage = ' Hola'; // dynamic Puede ser cualquier tipo de dato
  
  errorMessage = true;
  errorMessage = [1,2,3,4,5];
  errorMessage = {1,2,3,4,5}; //Esto es un set de datos
  errorMessage = ()=> true; // Una función que devuelve true
  errorMessage = null; 

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprities
  $errorMessage
""");
}

// poner ? al lado del tipo de dato 
//- Es valido en null safety
