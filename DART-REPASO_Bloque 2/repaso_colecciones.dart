void main(){
    // El where es básicamente un filtro
  List<int> numeros = [1,2,3,4,5,6,7,8,9,10];
  var pares = numeros.where((n) => n % 2 == 0 ); // Will return even numbers only
  var mayorQue = numeros.where((n) => n > 5); // Will return numbers greater than  5
  print(pares);
  print(mayorQue);



  // El .Map() - Se usa para convertir cada elemento de una lista en algo nuevo
  // Analogía: Una fábrica de jugos. Entran 5 naranjas enteras, pasan por el "proceso" y salen 5 vasos de jugo.
  // En este ejemplo, el map devuelve una nueva lista con cada elemento multiplicado * 2
  var nuevaLista = numeros.map((n) => n * 2); 
  print(nuevaLista);


  // .reduce() y .fold() - Son compactadores
  // REDUCE Combina todos los elementos en uno solo. Solo funciona si la lista tiene elementos del mismo tipo y no está vacía.
   // - EJ Sumar todos los números de una lista.
   var totalSuma = numeros.reduce((valorAcumulado, valorActual) => valorAcumulado + valorActual);
   print(totalSuma); // 

  // FOLD - Igual que reduce, pero tú le das un valor inicial. Es más seguro porque funciona incluso con listas vacías
   // - EJ Cuando quieres empezar a contar desde un número específico o transformar una lista de números en un String.
   var totalConBono = numeros.fold(100, (n,m) => n + m );
   print(totalConBono); // 

   // ANY && EVERY - Devuelven un bool
    // - .any() : Devuelve un true si al menos 1 cumple con la regla
    // - .every() : Devuelve un true si TODOS cumplen con la regla
    print(numeros.any((e) => e < 5)); // Will return true if any of the elements is smaller than five
    print(numeros.every((e) => e < 5)); // Will return true ONLY if every element on the list is smaller than 5 

} 

/*
 ⚠️ Errores Comunes
 Olvidar el .toList(): Métodos como map y where devuelven un Iterable. Si intentas usarlo como una lista normal después, Dart te dará un error. ¡Cierra siempre con .toList()!

 Usar .reduce() en listas vacías: Tu app se romperá. Si no estás seguro de si la lista tiene datos, usa siempre .fold(0, ...).

 */