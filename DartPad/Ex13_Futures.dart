void main() {
  
  // Se imprime un mensaje indicando el inicio del programa
  print('Inicio del programa');
  
  // Se realiza una petición HTTP a la URL especificada
  httpGet('https://fernando-herrera.com/cursos')
    .then( 
      (value) {
        // Si la petición es exitosa, se imprime el valor obtenido
        print(value);
      })
    .catchError((err) {
      // Si ocurre un error durante la petición, se captura y se imprime el mensaje de error
      print('Error: $err');
    });
  
  // Se imprime un mensaje indicando el fin del programa
  print('Fin del programa');
}

// Esta función simula una petición HTTP que demora 1 segundo
Future<String> httpGet(String url) {
  
  // Se devuelve un Future que se completa después de un retraso
  return Future.delayed(const Duration(seconds: 1), () {
    
    // Se lanza un error simulado al ejecutar la función
    //throw 'Error en la petición http';
    
    // En caso de no lanzar un error, se podría devolver una respuesta de la petición
     return 'Respuesta de la petición http';
    
  });
}
