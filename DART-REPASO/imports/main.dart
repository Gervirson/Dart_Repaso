import 'saludos.dart';
import 'calculadora.dart';
import 'usuario_toMap.dart';
import 'usuario_fromMap.dart';


calculadora (int a, int b, Function operacion){
  return operacion (a, b);
}


void main() {
  // FUCTION SALUDAR IMPORTED FROM saludos.dart
  saludar("Gervirson");
  
  // FUNCTION calculadora IMPORTED from calculadora.dart 
  // calculadora expects 3 parameters, one of them being another function
  print(calculadora(30, 15, suma));



  //TO MAP - CLASS IMPORTED FROM usuarios_toMap.dart
  var usuario1 =  Usuario(nombre: "Ana", edad: 26); // Pasamos los datos 
  Map<String, dynamic> mapa = usuario1.toMap(); // Guardamos los datos del mapa creado dentro de la clase en este nuevo mapa
  print(mapa["nombre"]); // Y ya podemos manipular los datos





  // FROMMAP -CLASS IMPORTED FROM usuarios_fromMap.dart
  Map<String, dynamic> datosDeLaRed = { // This informacion might come from a DataBase
    "id" : 101,
    "nombre": "Teclado Gamer",
    "precio" : 50.0,
  };
      
  // We pass that information on to our class Producto
  Producto miProducto = Producto.fromMap(datosDeLaRed);

  // We can access the different properties that now will take their values from the map we passed
  print("El producto recuperado es: ${miProducto.nombre}");


}