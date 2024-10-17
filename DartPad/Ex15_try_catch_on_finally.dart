void main() async {
  
  // Imprimimos el mensaje de inicio del programa.
  print('Inicio del programa');
  
  // Iniciamos un bloque try-catch para manejar posibles excepciones y errores.
  try {
    
    // Llamamos a la función httpGet de forma asíncrona usando 'await' para esperar el resultado.
    final value = await httpGet('https://fernando-herrera.com/cursos');
    
    // Si la petición es exitosa, imprimimos el resultado.
    print('éxito: $value');
    
  // Si se lanza una excepción del tipo 'Exception', la capturamos aquí.
  } on Exception catch (err) {
    print('Tenemos una Exception: $err');
    
  // Si se lanza un error que no es de tipo 'Exception', lo capturamos aquí.
  } catch (err) {
    print('OOP!! algo terrible pasó: $err');
    
  // El bloque 'finally' siempre se ejecuta, haya habido error o no.
  } finally {
    print('Fin del try y catch');
  }
  
  // Imprimimos el mensaje de fin del programa.
  print('Fin del programa');
}

// Función que simula una solicitud HTTP asíncrona.
Future<String> httpGet(String url) async {
  
  // Simulamos una espera de 1 segundo antes de continuar.
  await Future.delayed(const Duration(seconds: 1));
  
  // Lanzamos una excepción personalizada para simular un error de parámetros en el URL.
  throw Exception('No hay parámetros en el URL');
  
  // Otra opción sería lanzar un error genérico (esta línea está comentada).
  // throw 'Error en la petición';
  
  // Si no hubiera errores, aquí retornaríamos un valor (esta línea está comentada).
  // return 'Tenemos un valor de la petición';
}
