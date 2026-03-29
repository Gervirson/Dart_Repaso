/*
🔹 Contenido del Bloque 5
Paquete http

Para hacer peticiones web (GET, POST).

Ejemplo: consumir una API y traer datos en formato JSON.

Paquete path

Para manejar rutas de archivos y directorios de forma segura.

Ejemplo: unir rutas, obtener extensión de un archivo.

Uso de paquetes de pub.dev

pub.dev es el repositorio oficial de paquetes de Dart y Flutter.

Aprenderás a agregar dependencias en el archivo pubspec.yaml.

Ejemplo: instalar un paquete de utilidades o de conexión a base de datos.

 */

import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/posts/1");
  var respuesta = await http.get(url);

  if (respuesta.statusCode == 200) {
    var datos = jsonDecode(respuesta.body);
    print("Título: ${datos['title']}");
  } else {
    print("Error en la petición: ${respuesta.statusCode}");
  }
}

// exercism download --track=dart --exercise=atbash-cipher