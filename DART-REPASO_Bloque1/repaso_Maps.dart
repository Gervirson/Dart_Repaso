/**
 *  Serialización - significa convertir un objeto en un formato que pueda ser almacenado o transmitido (ej. JSON, Map).
 *  Deserialización - es el proceso inverso: reconstruir un objeto a partir de ese formato
 *  En Dart, lo más común es usar Map<String, dynamic> como puente hacia JSON.
 */

class Usuario {
  String nombre;
  int edad;
  Usuario(this.nombre): edad = 0;  // ¿When do we do this? When we wanna give a property a default value? 
  // Whatever that's inside the constructor will be requested from the user when this class is instanced


  // Serializacion - Básicamente, el valor de esos atributos, se va a guardar en este mapa.
  Map<String, dynamic> toMap(){
    return {"nombre":nombre, "edad":edad};
  }

  // Deseralización - Báscamente, el valor de esos atributos, se van a obtener de un mapa
  factory Usuario.fromMap(Map<String, dynamic> mapa){
    return Usuario(mapa["nombre"]); // ¿Por qué no me deja pasar edad ?
  }
}

void main (){
  Usuario u1 = Usuario("Gervirson"); // Regular
  print("${u1.nombre}, ${u1.edad}"); 

  
  // We use the Map the info will be stored in
  Map<String, dynamic> datos = u1.toMap();
  print(datos); // Prints maps with u1's info




  // We create the map where the información will be taken from
  Map <String, dynamic>datos2 = {
    "nombre": "Carlos", 
    "edad": 30
  };

  Usuario u2 = Usuario.fromMap(datos2);
  print("Hello, my name is ${u2.nombre}, and I am ${u2.edad} years old"); 
}