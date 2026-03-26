void main (){

  // Ejercicio con break
  int i = 0;
  while (i < 5){ // To make it stop at 3 u can either modify the condition  (i < 4)
  if (i == 3){ // or add a break method? to make it stop
    break; // Stops loop
  };
    print("Número actual $i");
    i++;
  }
  // Ejercicio con Switch

  /*
  
  El Switch no manejan condiciones como lo hacen los IF/IF ELSE/ELSE 
  Solo les pasas el valor que funciona como una condición, y lo que sea que se va a hacer dada esa condición
  Es bastante menos flexible
   */

  int valor = 5;
  switch (valor){
    case 0:
    print("Es 0"); // Es 0 si es cero 
    break;
    case 2: // Es positivo si es mayor que cero -
    print("Es positivo");
    break;
    case -1:
    print("Es negativo"); // Es negativo por default / El único problema es que marcará a todos lo números difentes de 0 y 2 como negativos  ¿Cómo lo resolvemos? Con el sign
    break;
  }

  /*
  
  i.sign devuelve 0 si i == 0
  1 si i > 0
  -1 si i < 0 
  Y todo lo que falta es usar esos valors para imprimir los mensajes
   */


  for (int i = 0; i < 4; i++) { // 4 is left out since the condition is met / 4 is not less than 4 is equal 4, hence breaking the loop
  if (i == 2) continue;
  print(i);
}



}

/*
🔹 Flashcards – Control de flujo
Aquí tienes las primeras tarjetas de repaso:

Pregunta: ¿Qué hace break en un bucle?
Respuesta: Detiene la ejecución del bucle inmediatamente.

Pregunta: ¿Qué hace continue en un bucle?
Respuesta: Salta la iteración actual y pasa a la siguiente.

Pregunta: ¿Cuándo usarías switch en lugar de if/else?
Respuesta: Cuando tienes múltiples condiciones sobre un mismo valor y quieres un código más limpio.

 */
