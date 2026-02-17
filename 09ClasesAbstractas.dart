void main(){

}
enum PlantType{nuclear, wind, water} //Creo un tipo llamado PlantType, que puede ser cualquiera de los 3  

abstract class EnergyPlant{
  double energyLeft;

  PlantType type; // tengo un atributo type que es de tipo PlantType

  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  void consumeEnergy(double amount);
}

