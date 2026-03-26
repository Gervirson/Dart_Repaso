/*
// TOMAP
//Hasta donde entiendo, el valor de las propiedades, las almacena en un Map
// Sirve para serializar objetos y poder enviarlos o almacenarlos.

// FROMMAP
// Es un constructor que recibe un Map<String, dynamic> y se puede usar sus datos como valor para las propiedades de una clase.
// Sirve para deserializar datos (por ejemplo, cuando recibes JSON de una API).
 */
class Usuario {
  String nombre;
  int edad;

  Usuario({required this.nombre, required this.edad});

  // Convierte el objeto en un mapa 
  Map<String, dynamic> toMap() { // Este método toMap va a retornar un mapa
    return {
      "nombre" : nombre,
      "edad": edad
    };
  }
}
