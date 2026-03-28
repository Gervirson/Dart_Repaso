/* CONCEPTO CLAVE
- En Dart, cualquier clase puede actuar como interfaz
- Una interfaz define qué métodos deben implementarse, pero no cómo.
- Se usa la palabra IMPLEMENTS
- Cuando una clase implementa una interfaz, está obligada a redefinir todos los métodos y propiedades que esa interfaz declara
*/
/*
Los Mixings te dan la ventaja de añadir 'funcionalidades' a ciertas clases, sin necesidad de heredar o implementar nada 
 */


// 1 - Definimos una interfaz
abstract class Personaje {
  String nombre;
  Personaje(this.nombre);
  void atacar(); // Mi personaje ataca
}
// Algunos Mixins 
mixin Curador{
  void curar(){print("El Mago está curando a sus aliados");}
}


// 2 - Clase que implementa mi interfaz / - Quiero que todos mis personajes puedan atacar, así que implemento una interfaz
class Mago with Curador implements Personaje {
  String nombre; 
  Mago(this.nombre);

  @override
  void atacar(){
    print("Mago $nombre está atacando"); 
  }
}

class Guerrero implements Personaje{
  String nombre; 
  Guerrero(this.nombre);
  
  @override
  void atacar(){
    print("Guerrero $nombre está atacando"); 
  }
}

void main (){
  Mago merlin = Mago("Merlin");
  merlin.atacar(); 
  merlin.curar();

  Guerrero thor = Guerrero("Thor"); 
  thor.atacar();  
}