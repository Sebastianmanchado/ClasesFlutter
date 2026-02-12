void main () {
  final numbers = [1,2,3,4,5,5,6,7,8,9,9,10];

  print('List original $numbers');
  print('Largo ${numbers.length}');
  print('Indice 0: ${numbers[0]}');
  print('Indice 0: ${numbers.first}');
  print('Largo ${numbers.reversed}');
  
  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('Lista: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}');

  final numbersGreaterThan5 = numbers.where((num){
    return num>5; 
  });


  print('>5: $numbersGreaterThan5');
  print('>5: ${numbersGreaterThan5.toSet()}');
}