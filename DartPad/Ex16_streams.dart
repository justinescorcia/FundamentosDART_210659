void main() {
  
  // Llamamos a la función emitNumbers que devuelve un Stream, y nos suscribimos a él usando listen.
  // Cada vez que el Stream emita un valor, se ejecuta la función anónima que imprime el valor.
  emitNumbers().listen((value) {
     print('Stream value: $value');
  });
  
} 


// Esta función genera un Stream que emite un número entero cada segundo.
Stream<int> emitNumbers() {
  
  // Stream.periodic crea un Stream que emite valores en intervalos regulares.
  // En este caso, se especifica un intervalo de 1 segundo.
  return Stream.periodic(const Duration(seconds: 1), (value) {
    // El valor emitido es el índice actual, que va aumentando con cada emisión (0, 1, 2, 3...).
    return value;
  }).take(5); // Con take(5), limitamos el Stream para que solo emita 5 valores y luego se cierre.
}
