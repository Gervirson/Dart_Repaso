abstract class Personaje{ // Interfaz
void atacar();  // Every character will attack
}


// MIXINS
mixin Curador{
  void curar(){ print("Puedo curar");}
}
mixin Defensor{
  void defender(){ print("Puedo defender");}
}



// CHARACTERS 
class Mago with Curador implements Personaje{
  String nombre;
  int edad;

  Mago({String nombrePorDefecto = "Ana", int edadPorDefecto = 0}): // Valores por defecto
  edad =edadPorDefecto, nombre = nombrePorDefecto; 

    Map<String, dynamic> toMap(){ // Serialización 
    return {"nombre":nombre, "edad":edad};
  }

  void atacar(){print(""); }
}



class Guerrero with Defensor implements Personaje {
  String nombre;
  int edad;

  Guerrero(this.nombre, this.edad); 
  factory Guerrero.fromMap(Map<String, dynamic> mapa){ // Deserialización
    return Guerrero(mapa ["nombre"], mapa["edad"]);
  }
  void atacar(){print("");}
}

void main(){
  Mago merlin = Mago(); 
  Map<String, dynamic> mapaMagos =  merlin.toMap();
  print(mapaMagos); 
  merlin.curar(); //  We access our mixin





  Map<String, dynamic> mapaGuerreros = {
    "nombre" : "Achiles",
    "edad" : 500
  };

  Guerrero achiles = Guerrero.fromMap(mapaGuerreros); 
  print(mapaGuerreros); 
  print(achiles);
  achiles.defender(); // We access our mixin
}
