void main() async {
  
  // Imprimimos el mensaje de inicio del programa.
  print('Inicio del programa');
  
  // Iniciamos un bloque try-catch para manejar posibles errores en la solicitud.
  try {
    
    // Llamamos a la función httpGet de forma asíncrona usando 'await' para esperar el resultado.
    final value = await httpGet('https://fernando-herrera.com/cursos');
    
    // Si la función no genera un error, imprime el resultado de la petición.
    print(value);
    
  } catch (err) {
    // Si ocurre un error, lo capturamos y mostramos el mensaje de error.
    print('Tenemos un error: $err');
  }
  
  // Imprimimos el mensaje de fin del programa.
  print('Fin del programa');
}

// Función que simula una solicitud HTTP asíncrona.
Future<String> httpGet(String url) async {
  
  // Simulamos una espera de 1 segundo antes de continuar.
  await Future.delayed(const Duration(seconds: 1));
  
  // Lanzamos un error para simular una falla en la solicitud HTTP.
  throw 'Error en la petición';
  
  // Si no hubiera un error, aquí retornaríamos un valor (esta línea está comentada).
  // return 'Tenemos un valor de la petición';
}
