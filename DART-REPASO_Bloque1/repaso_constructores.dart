class Usuario {
  String nombre;
  int edad;
  // Constructor nomal
  Usuario(this.nombre, this.edad);

  // Constructor nombrado
  Usuario.sinEdad(this.nombre) : edad = 0;

  // Factory constructor desde Map
  factory Usuario.fromMap(Map<String, dynamic> datos) {
    return Usuario(datos["nombre"], datos["edad"]);
  }
}

void main() {

  Usuario u1 = Usuario("Diana", 27);
  print("${u1.nombre}, ${u1.edad}"); 


  Usuario u2 = Usuario.sinEdad("Jeranny");
  print("${u2.nombre}, ${u2.edad}"); // You still have access to edad 

  var datos = {"nombre":"Gerson", "edad":25};
  Usuario instanciaUsuario = Usuario.fromMap(datos); 
  print(" ${instanciaUsuario.nombre}, ${instanciaUsuario.edad}"); 

}


/* LEARN LATER 
Constructores constantes (const) - Crean instancias inmutables que pueden ser usadas en tiempo de compilación.


class Punto {
  final int x;
  final int y;

  const Punto(this.x, this.y);
}

void main() {
  const p1 = Punto(1, 2);
  const p2 = Punto(1, 2);
  print(identical(p1, p2)); // true, misma instancia
}


 */