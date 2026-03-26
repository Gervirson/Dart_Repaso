  /*
  🔹 Conceptos clave
File → representa un archivo en el sistema.

writeAsStringSync() / writeAsString() → escribir texto en un archivo.

readAsStringSync() / readAsString() → leer contenido de un archivo.

Directory → representa una carpeta.

existsSync() → verificar si existe.

createSync() → crear una nueva carpeta.

jsonEncode → convierte un objeto Dart (mapa, lista) en un String JSON.

jsonDecode → convierte un String JSON en un objeto Dart (mapa o lista).
  

Codificar (jsonEncode o JsonEncoder) → siempre devuelve un String, porque JSON es texto plano.

Decodificar (jsonDecode) → siempre devuelve un dynamic, que puede tomar dos formas principales:
-Si el JSON es un objeto ({...}) → se convierte en un Map<String, dynamic>.
-Si el JSON es una lista ([...]) → se convierte en un List<dynamic>.


   */




import 'dart:convert';
import 'dart:io';


void directoryCreator (){
  var dir = Directory("usuarios"); // This specify name and path of folder
  dir.create(); // This will create the folder
}



void main () async{
  File archivo = File ("saludo.txt"); // Crea archivo
  await archivo.writeAsString("Hola, Dart"); // Escribe de forma asincrona en el archivo
  List<String> contenido = await archivo.readAsLines(); // Esto devuelve una lista String
  print(contenido); // Imprime dicha lista

  directoryCreator(); // We call out function directory creator

  

  Map <String, dynamic> mapa = { // Our map with the information
    "Nombre": "Gervirson",
    "Apellido": "S. Nova",
    "Edad": 25,
    "ID": 40210326035,
    "DOB": "2000/10/14"
  };

print(mapa);





  List <Map<String, String>> mapa2 = [
  {"nombre":"Ana","rol":"editor"},
  {"nombre":"Luis","rol":"admin"}
];

  

  File archivos = File("usuarios/usuario.json"); // This will 'create' a file called usuarios.json in the folder we created.

  // WE ENCODE THE FILE
  var encoder = JsonEncoder.withIndent(' '); // This is far better than JsonEncode as it not only makes the json file pre
  String jsonString = encoder.convert(mapa2);
  await archivos.writeAsString(jsonString); // The file usuario.json is actually created after information has been imputed into it 

  // WE DECODE THE FILE 
  String contenido2 = await archivos.readAsString(); // We read the file 
 var usuarios = jsonDecode(contenido2);  // We decode the file and put it in a Map

for (var usuario in usuarios){
  print("Nombre: ${usuario["nombre"]}, Rol: ${usuario["rol"]}");
}
// print(usuarios[0]["nombre"]); This will target the first map inside the List and return the name






}

