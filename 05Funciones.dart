void main(){
  print(greetEveryone());
  print('Suma: ${addTwoNumbers(10,20)}');
  print('Suma lambda; ${addTwoNumbers2(10, 20)}');

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

