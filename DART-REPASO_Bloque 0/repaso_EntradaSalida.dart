import 'dart:io';

void main (){
  print("Print() : Muestra texto en consola y deja salto de linea"); // Muestra texto en consola y deja salto de linea
  stdout.write("stdout.write(): Muestra texto sin dejar salto de linea"); // Muestra texto en consola
  // stdin.readLineSync(); // Entrada estándar, permite leer texto ingresado - Todo lo que entra es un convertido a String y por ende un String es devuelto. 
  // Usa int.parse() o double.parse() para convertir de ser necesario. 

  stdout.write("Escribe tu nombre: ");
  String? nombre = stdin.readLineSync();
  print("Hola, $nombre!");

  stdout.write(" Ingresa dos números para ser sumados: ");

  int? num1 = int.tryParse (stdin.readLineSync() ?? "") ?? 0; // if nothing is passed, then "" will be asigned to num1 and since "" can't be converted into a number, num1 default value will be 0
  int? num2 = int.tryParse (stdin.readLineSync()?? "") ?? 0; // if nothing is passed, then "" will be asigned to num1 and since "" can't be converted into a number, num1 default value will be 0
  print("Suma: ${num1 + num2}");




  print("Ingrese su edad: ");
  int? edad = int.tryParse (stdin.readLineSync()?? "") ?? 0;

  if(edad ==  0){
    print("No ingresaste tu edad");
  } else if ( edad <= 18){
    print("Eres menor de edad");
  } else{
    print("Eres adulto");
  }

}