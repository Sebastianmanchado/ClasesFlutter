void main(){
  print(greetEveryone());
  print('Suma: ${addTwoNumbers(10,20)}');
  print('Suma lambda; ${addTwoNumbers2(10, 20)}');
   print(greetPerson(name:'Seba')); // Puedo usar esta función sin el segundo parametro ya que no es required 
  print(greetPerson(name:'Seba', message: 'Bienvenido, '));
}

String greetEveryone() => 'Hola a todos'; //funcion lambda o de flecha 

int addTwoNumbers(int a, int b){
  return a+b; 
} // funcion normal - parametros obligatorios y posicionales


//convierto funcion normal a lambda 
int addTwoNumbers2(int a, int b)=> a+b;


//Un argumento opcional 
int addTwoNumbersOpcional(int a, [int b = 0]){ //aca b es opcional y en caso de no existir sera igual a 0
  return a+b; 
} // a es obligatiorio, entre [] es opcional  

//entre {} los hago opcionales 
//required hace parametro obligatorio 
// Esta forma de escribir los parametros me permite llamarlos en base a un nombre al utilizar la funcion 

String greetPerson({required String name, String message = 'Hola '}){ 
  return '$message, $name  ';
}
