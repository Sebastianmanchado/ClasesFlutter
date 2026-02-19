/* //Mixin es una forma de agregar 
comportamiento a una clase sin usar la herencia tradicional

Sireve para intectar funciones o logica reusable en
 varias clases distintas sin tener que armar una jerarquia 
 
 no es "es un tipo de", sino que comparte funciones. 
 
 Se usan cuando quiero reutilizar codigo en varias clases
 y cuando quiero agregar una funcion compartida 
 con otra clase 
 a una que YA EXTIENDE a alguna 
 
 Herencia: Extends -> Es un 
 
 Mixin: With -> Puede hacer 
 
 perro extends animal 
 perro with nadador
 
 Puedo asociar varios mixin a una clase
 
 Mixin: 
 No tiene constructor 
 No representa una entidad 
 Solo agrega compotamiento
  */
abstract class Animal{} // solo caracteristicas de los animales
abstract class Mamifero extends Animal{} //solo caracteristicas de mamiferos 
abstract class Ave extends Animal{} //solo caracteristicas de aves
abstract class Pez extends Animal{} //solo caracteristicas de preces 

mixin Volador {
  void volar() => print('Estoy volando');
}

mixin Caminante {
  void caminar() => print('Estoy Caminando');
}

mixin Nadador {
  void nadar() => print('Estoy Nadando');
}



//Creadas clases abstractas y mixins, creo clases concretas

class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador,  Caminante{}
class Gato extends Mamifero with Caminante{}

class Paloma extends Ave with Volador, Caminante{}
class Pato extends Ave with Volador, Nadador, Caminante {}

class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador, Volador{}

void main (){
  final flipper = Delfin();
  flipper.nadar();

  final batman = Murcielago();
  batman.caminar();
  batman.volar();

  final namor = Pato();
  namor.caminar();
  namor.volar();
  namor.nadar();
}