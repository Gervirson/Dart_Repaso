/*
🔹 Conceptos clave
Isolate

En Dart, todo el código corre dentro de un isolate.

Un isolate es como un “mini-proceso” con su propia memoria y ejecución independiente.

A diferencia de los threads en otros lenguajes, los isolates no comparten memoria directamente, se comunican por mensajes.

Comunicación entre isolates

Se hace mediante SendPort y ReceivePort.

El isolate envía datos a través de un SendPort, y el otro recibe con un ReceivePort.
 */

import 'dart:isolate';

void cargarHechizo(SendPort sendPort) async{
  await Future.delayed(Duration(seconds: 3));
  print("!Hechizo cargando¡");
}

void main() async{
  ReceivePort receivePort = ReceivePort();
  await Isolate.spawn(cargarHechizo, receivePort.sendPort); // Se usa para crear el Isolate y pasarle el SendPort del ReceivePort para que pueda enviar mensajes de vuelta.

  print("El mago empieza a cargar su hechizo...");
  receivePort.listen((mensaje) { // Con esto leemos el mensaje recibido
    print(mensaje);
  });
}