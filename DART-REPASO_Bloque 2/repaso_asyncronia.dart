// - Representa un valor que estará disponible en el futuro
// - Puede estar en estado pendiente, completado con éxito o completado con error.

// ASYNC - Marca una función como asíncrona
// AWAIT - pausa la ejecución hasta que el FUTURE se complete

// MANEJAMOS ERRORES CON TRY/CATCH 
// Streams - Representan una secuencia de valores asíncronos (como un flujo de datos).

Stream<int> contador() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}


Future contador2() async {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    print (i);
  } 
}

void main() async {
  await for (var valor in contador()) {
    print("Contador: $valor");

  }
  await contador2();
  print(await contador());
}

/*

🔹 Flashcards – Asincronía
Pregunta: ¿Qué representa un Future en Dart?
Respuesta: Un valor que estará disponible en el futuro.

Pregunta: ¿Qué palabra clave se usa para esperar un Future?
Respuesta: await.

Pregunta: ¿Qué estructura se usa para manejar múltiples valores asíncronos?
Respuesta: Stream.

Pregunta: ¿Cómo se manejan errores en funciones asíncronas?
Respuesta: Con try/catch.

 */