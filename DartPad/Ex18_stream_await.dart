void main() {
  
  // Llamamos a la función emitNumber, que devuelve un Stream asíncrono, y nos suscribimos a él usando listen.
  // Cada vez que el Stream emita un valor, la función anónima imprime el valor.
  emitNumber()
     .listen((int value) {
        
       print('Stream value: $value');
       
     }); 
}


// Función generadora que emite un Stream asíncrono de números enteros.
Stream<int> emitNumber() async* {
  
  // Lista de valores que queremos emitir a través del Stream.
  final valuesToEmit = [1, 2, 3, 4, 5];
  
  // Recorremos cada valor de la lista y lo emitimos uno a uno después de una espera de 1 segundo.
  for (int i in valuesToEmit) {
    // Esperamos 1 segundo antes de emitir el siguiente valor.
    await Future.delayed(const Duration(seconds: 1));
    
    // Con 'yield', emitimos el valor actual del ciclo. Esto es equivalente a 'return', pero para Streams.
    yield i;
  }
  
}
