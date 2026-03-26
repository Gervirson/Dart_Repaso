import 'dart:io';

void main () async{
  // - Try/Catch bloque que captura excepciones y evita que el programa se detenga.
  // On - Captura un tipo específico de error
  // Catch (e) - Captura cualquier error y lo guarda en e
  // finally - Se ejecuta siempre, haya o no error (ideal para cerrar archivos, liberar recursos, etc.).

  /*
  FileSystemException    Error del sistema de archivos: ruta inválida, permisos insuficientes, disco lleno o inaccesible.
  ArgumentError          Error de argumento: se pasó un valor inválido, por ejemplo intentar escribir null en lugar de un String.
  UnsupportedError       Operación no soportada: la plataforma o sistema de archivos no permite la acción solicitada.
  IOException            Error genérico de entrada/salida: fallos al leer o escribir datos.
  FormatException        Error de formato: ocurre al intentar interpretar datos con un formato incorrecto (ej. parsear texto inválido).
   */

  //  Ejercicio 1
  try{
    int numero = int.parse("abc"); // tries to turn abc into an integer and fails 
    print(numero);
  }catch (e){ // catches error message and put it inside e
    print("Error: $e"); // Prints Error: erro message captured
  }

  // Ejercicio 2
  print("Dame un número : ${int.tryParse(stdin.readLineSync()?? "") ?? 0}");


  // Ejercicio 3
  try{
    File archivo = File("Bank_Statement"); // Does not quite creat the file itself but the name of the file we could day

    // Files are ONLY created after information have been inputed into them 
    // Only declaring File archivo = File("Bank_Statement"); won't suffice
    // That's why this program will give an error at the end


    if(await archivo.exists()){ // If File exists then  (which it doesn't)
      archivo.writeAsStringSync("Hola mundo"); // Writes "Hola mundo" on the file  (which won't happen since it does not exist)
      String fileContent = archivo.readAsStringSync(); // Reads file content and put it in a var called fileContent (which won't happen either for the same reason)
      print("File content : $fileContent"); 
    }else{
      throw Exception("Error 404");  // Now this will happen 
    }
    
    /*
    archivo.writeAsStringSync() 
    - Sincrónico → bloquea la ejecución hasta que termine de escribir el archivo.
    - Tu programa se detiene en esa línea hasta que la operación finaliza.
    - Útil cuando necesitas asegurarte de que el archivo esté escrito antes de seguir con el resto del código.


    archivo.writeAsString();
    - Asíncrono → devuelve un Future<File>
    - No bloquea la ejecución; tu programa sigue corriendo mientras el archivo se escribe en segundo plano.
    -
     */ 
     
  }catch(e){ 
    print("El archivo no existe : $e");  // Catches error message thrown by else clause and prints it here 
  } finally{
    print("Proceso terminado");  // It's printed regardless of the outcome. 
  }


}