void main(){
  final wolverine = new Hero('Logan','Regeneración');
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);

}
//Creando una clase 
class Hero{
  
  String name;
  String power;

  //Constructor largo
 /* Hero(String pName, String pPower)
  : name = pName,
    power = pPower;*/

  //Constructor corto
  Hero(this.name, this.power);
}
