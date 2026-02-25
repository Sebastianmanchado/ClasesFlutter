//Streams son flujos de info que pueden estar emitiendo valores periodicamente 
// async* (con asterisco) es un async en donde la funcion va a hacer return de un stream 

void main(){
  emitNUmber()
  .listen((value){
    print('Stream Value: $value');
  });

}

emitNUmber () async* {

final valuesToEmit = [1,2,3,4,5];
for(int i in valuesToEmit){
  await Future.delayed(const Duration(seconds: 1));
  yield i; //Return para streams
}

}