class Producto{
  int id;
  String nombre;
  double precio;
   

  //Constructor opcional nombrado requerido
  Producto({required this.id, required this.nombre, required this.precio});

  factory Producto.fromMap(Map<String, dynamic> mapa){
    return Producto(id: mapa["id"], nombre: mapa["nombre"], precio: mapa["precio"]);
  }

  // Factory - Indica a dart que la información de las propiedades viene de un map

}


