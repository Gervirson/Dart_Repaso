/*
Herencia - permite que una clase hija reutilice atributos y métodos de otra clase padre
Se usa EXTENDS para llevar a cabo de heredación
La clase hija puede:
* -Usar los métodos y atributos de la clase padre.
* -Redefinir métodos con @override.
* -Añadir nuevos atributos o métodos propios.
Se puede invocar el constuctor o métodos del padre con SUPER
 */


import 'repaso_encapsulacióon.dart';

class CuentaPremiun extends CuentaBancaria { // Extends from CuentaBancaria and adds a new atribute
// - Premiun accounts have no transaction fees
// - Premiun accounts have bonuses
// - Premiun accounts starts off with 500 dollars

   
  CuentaPremiun ({required String titular, double saldoInicial = 500}) // saldoInicial ya tiene valor por defecto en la clase padre, si lo pongo aquí, es para que tenga un valor por defecto disinto al del padre
  : super(titular: titular, saldoInicial: saldoInicial);

  @override
  void deposito(double monto) {
    if(monto <= 0){
      print("El monto es inválido");
    }else{
      super.saldoInterno += monto;
      print("Depósito Premium realizado: $monto DOP. Sin cargos.");
    }
  }

  @override
  void retirar(double retiro){
    if(retiro > saldoInterno){
      print("La cantidad excede tu saldo actual");
    }else{
      saldoInterno -= retiro; 
    }
  }

  
}


/*
SUPER - Hace referencia a la clase padre desde la clase hija
Se usa para : 
- Invocar el constructor del padre
- Acceder a métodos o propiedades del padre cuando los hemos sobreescrito en la hija, pero aún queremos resutilizar parte de la lógica original
 */