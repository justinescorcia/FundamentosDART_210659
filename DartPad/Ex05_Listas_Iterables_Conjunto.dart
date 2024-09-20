void main() {
  //Listas(Listas)
  //La declaracion de LIST esta limitada por corchetes(brackets)
  final numeros = [1,2,2,2,3,4,5,6,7,7,7,7,8,8,9,10]; 
  
  print("Ejemplo de lista de numeros: $numeros");
  print("Confirmaremos el tipo de dato para NUMEROS que es: ${numeros}");
  print("Podemos acceder a cierta inrfoamcion de un alista tal como: ");
  print("El tamaño $numeros.length");
  print("""
  ------------------------------------------------------------------------------------
  Para acceder a los elementos debes especificar la posicion entre []
  El elemento en la PRIMERA posicion es: ${numeros[0]}
  El elemento en la SEGUNDA posicion es: ${numeros[1]}, siempre respetando el posicion-1
  El ULTIMO elemento de la lista seria: ${numeros[numeros.length-1]}
  -----------------------------------------------------------------------------------
  D igual manera existen las siguientes alternativas
  Primer Elemento ${numeros.first}
  Ultimo elemento ${numeros.last}
  -----------------------------------------------------------------------------------
  Tambien tendremos metodos que permiten la transformacion o filtradi del contenido
  Por ejemplo para invertir el orden original ${numeros.reversed}
  Es importante observar que la funcion reversed ah transformado a la LIST original y la   retorna como un iterable
  """);
  
  final numerosAlreves=numeros.reversed;
  print("Los iterables son estructuras de datos que DART y otros lenguajes para optimizar en terminos de  velocidad el acceso a los datos y propiedades");
  print("Ejemplo de in ITERABLE : $numerosAlreves");
  print("Confirmamos el tipo de dato para NUMEROSALREVES que es: ${numerosAlreves.runtimeType}");
  
  
print("De igual manera podemos transdormar una lista en ITERABLE y c¿viceversa");
print("Convertimos el ITERABLE a LISTA usando .toList(): ${numerosAlreves.toList()} y verificamos su tipo de dato${numerosAlreves.toList().runtimeType}");
  

print("""
  Veamos que pasa con los conjuntos (SET)
  Convertimos el ITERABLE en un SET usando .toSET : ${numerosAlreves.toSet()}
  Podemos visualizar en el resultado que el SET a eliminado los duplicados y ahora
  delimita los datos usando ().
""");
  
  //De igual manera podemos realizar operaciones para el filtro de elementos usando .where()
  
  final numerosMayoresAS =numeros.where((num){
    return num > 5;
  });
  
  print("""
        Hemos filtrado sobre la LIST solo los elementos mayores a 5:
        Resultado de filtro: ${numerosMayoresAS}
  """);
  print("Eliminando suplicados  ... ${numerosMayoresAS.toSet()}");
  
  
  
  
  
  

}
