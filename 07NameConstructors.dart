void main(){

  final rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  }; //Json que uso para crear el superheroe 


  final ironman = Hero.fromJson( rawJson);   

  print(ironman);

}

class Hero{

  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });

  Hero.fromJson(Map<String,dynamic> json) // al obtener de mapa hay que chequear todo
: name = json['name'] ?? 'No name found',
  power = json['power'] ?? 'No power found',
  isAlive = json['isAlive'] ?? 'No alive found';

  @override
  String toString(){
    return '$name, $power, ${ isAlive ? 'YES!': 'NOP'}'; // Ternario - If
  }



}