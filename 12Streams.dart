//Streams son flujos de info que pueden estar emitiendo valores periodicamente 
void main(){
emitNumbers().listen((value){
  print('$value');
});

}

Stream<int> emitNumbers(){


  return Stream.periodic(const Duration(seconds: 1), (value){
    //print('desde preiodic: $value');
    return value; 
  }).take(10);
}