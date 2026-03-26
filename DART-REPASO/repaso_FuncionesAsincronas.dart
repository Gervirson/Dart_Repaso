import 'dart:io';
import 'dart:convert';

Future <int> obtenerDatos(int numero)async{
  await Future.delayed(Duration(seconds: 3));
  return numero +  numero; // El doble de un número es ese número dos veces, así que una suma funciona perfectamente.
}


// API Simulacion
Future <Map <String, String>> apiSimulacion ( ) async{ // Waits three seconds and then return Map
  await Future.delayed(Duration(seconds: 2)); // Not needed since we are actually requesting information, not just simulating 
 return  {
    "usuario" : "Gervirson",
    "rol": "admin",
  };
}

void main () async{
  // Future - representa un valor que estará disponible en el futuro
  // Async - marca una función como asíncrona, permitiendo usar await dentro de ella.
  // await - pausa la ejecución hasta que el Future se resuelva.
  
  print("Cargando...");
  print("Doble de un número : ${await obtenerDatos(5)}");




  try {
    Map<String, String> mapa = await apiSimulacion(); // Llamamos a la función y ponemos los resultados en un mapa
    var encoder = JsonEncoder.withIndent('  ');
    String jsonString = encoder.convert(mapa); // convertimos el mapa a JSON (esto devuelve un string JSON estilo Map) que luego metemos en una variable
    //String jsonString =  jsonEncode(mapa); // Does the same but inline 

    File archivo = File("datos.Json"); // Creamos el archivo json
    await archivo.writeAsString(jsonString); // Pasamos el contenido que tendrá el archivo

    // DART NO PUEDE LEER ARCHIVOS JSON DIRECTAMENTE, ASÍ QUE HAY QUE DECODIFICARLOS ANTES 

    String contenido =  await archivo.readAsString(); // Tomamos los datos y los metemos en una variable contenido (esto devuelve un String JSON)
    Map<String, dynamic> usuarios = jsonDecode(contenido); // Tomamos ese String JSON y lo convertimos a un map legible por Dart
    print(usuarios);
  }catch (e){
    print("Ocurrio un error");
  } finally{
    print("Gracias por usar nuestros servicios");
  }

  
}


/*


🔹 Flashcards – Funciones asíncronas
Pregunta: ¿Qué es un Future en Dart?
Respuesta: Un objeto que representa un valor que estará disponible en el futuro.

Pregunta: ¿Qué hace await dentro de una función async?
Respuesta: Pausa la ejecución hasta que el Future se resuelva.

Pregunta: ¿Qué pasa si llamas a una función async sin await?
Respuesta: Obtienes un Future pendiente en lugar del resultado.

Pregunta: ¿Qué diferencia hay entre Future.delayed y sleep?
Respuesta: Future.delayed es asíncrono (no bloquea el programa), sleep es síncrono (bloquea la ejecución).

 */