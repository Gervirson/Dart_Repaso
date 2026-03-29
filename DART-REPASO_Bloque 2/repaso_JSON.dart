import 'dart:convert';

class Mago {
  String nombre;
  int poder;

  Mago(this.nombre, this.poder);

  Map<String, dynamic> toMap() => {"nombre": nombre, "poder": poder};
  String toJson() => jsonEncode(toMap());


  factory Mago.fromJson(String source) {
    var datos = jsonDecode(source);
    return Mago(datos["nombre"], datos["poder"]);
  }
}

void main() {
  var merlin = Mago("Merlin", 100);
  var jsonMerlin = merlin.toJson();
  print(jsonMerlin); // {"nombre":"Merlin","poder":100}

  var nuevoMago = Mago.fromJson('{"nombre":"Gervirson","poder":120}');
  print("${nuevoMago.nombre}, poder: ${nuevoMago.poder}");
}

/* 

🔹 Flashcards – JSON
Pregunta: ¿Qué paquete se usa para manejar JSON en Dart?
Respuesta: dart:convert.

Pregunta: ¿Qué función convierte un objeto Dart a JSON?
Respuesta: jsonEncode().

Pregunta: ¿Qué función convierte JSON a un objeto Dart?
Respuesta: jsonDecode().

Pregunta: ¿Qué tipo de estructura se usa como puente entre JSON y Dart?
Respuesta: Map<String, dynamic>.


*/