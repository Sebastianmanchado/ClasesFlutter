void main(){
    final mySquare = Square(side: 10); //Instancio square

    print('area: ${mySquare.calculateArea()}'); // Calculo el area

    mySquare.side = 5;
}

class Square{
  double _side; // Guion bajo indica privado

  Square({required double side})
  : _side = side;  //Armo constructor 

  double calculateArea(){
    return _side * _side; 
  } // metodo para calcular area

  double get area {
    return _side * _side; 
  } // getter de area 

  set side (double value){
    print('setting new value $value');
    if (value < 0) throw 'Value must be >=0';
    _side = value;
  }


} 