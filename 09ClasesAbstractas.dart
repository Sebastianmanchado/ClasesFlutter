void main(){
  final plant1 = windPlant(initialEnergy: 100);

  print('wind: ${chargePhone(plant1)}');
}

double chargePhone(EnergyPlant plant){
  if(plant.energyLeft <10){
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}
enum PlantType{nuclear, wind, water} //Creo un tipo llamado PlantType, que puede ser cualquiera de los 3  

abstract class EnergyPlant{ //clase abstacta
  double energyLeft;

  PlantType type; // tengo un atributo type que es de tipo PlantType

  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  void consumeEnergy(double amount); //solo fima
}

class windPlant extends EnergyPlant{
   windPlant({required double initialEnergy})
   : super(energyLeft: initialEnergy, type: PlantType.wind); //llamo constructor del padre

  @override
   void consumeEnergy(double amount){
    energyLeft -= amount;
   }
}