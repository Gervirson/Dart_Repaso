/*
**Internacionalización (i18n):  consiste en preparar tu aplicación para que soporte varios idiomas **
 */
Map<String, String> miniMap(String clave){ // Function that returns Map and receives a parameter which will store the language value 

  Map <String, Map<String, String>> traducciones = { // Map with the different languages 
    "es" : { // Spanish keyed as es
      "opcion1" : "Ver perfil", 
      "opcion2": "Configuración",
      "opcion3" : "Salir",
    },

    "en" : { // English keyed as en
      "option1" : "View profile", 
      "option2": "Settings",
      "option3" : "Quit",
    },

    "fr" : { // French keyed as fr
      "opcion1" : "Voir le profil", 
      "opcion2": "Parametres",
      "opcion3" : "Quitter",
    },

  };
      return traducciones[clave]!;  // Function returns Map that matches clave's value
}

String traducir({required String clave,required String idioma}){

    Map <String, Map<String, String>> traducciones = {
    "es" : {
      "saludo": "Bienvenido",
      "despedida": "Adiós"
    },
    "en" : {
      "saludo": "Welcome",
      "despedida": "Goodbye"
    },

    "fr": {
      "saludo": "Bienvenue",
      "despedida": "Au revoir"
    }
  };

  return traducciones[idioma]![clave]!;

}

void main (){


  //Menu in three languages 
  Map<String, String> nuevoMap = miniMap("en"); // We call our function that returns a map and we store that map in a new map so we can manipulate it
  for (MapEntry<String, String> elements in nuevoMap.entries){ // We iterate thru the map
    print(" ${elements.key} : ${elements.value}");  // Then we print every key : value 
  }



  Map <String, Map<String, String>> traducciones = {
    "es" : {
      "saludo": "Bienvenido",
    },
    "en" : {
      "saludo": "Welcome",
    },

    "fr": {
      "saludo": "Bienvenue",
    }
  };

  String idioma = "fr";
  // print(traducciones[idioma]!["saludo"]);

  String saludoDespedida = traducir(clave: "saludo", idioma: "es");
  // print(saludoDespedida);

}