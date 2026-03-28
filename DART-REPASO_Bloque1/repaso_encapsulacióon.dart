/*
Encapsulación significa proteger los datos internos de una clase y controlar cómo se accede o modifica.
Usamo _propiedad para declararla como privada
Usamos getters y setters para acceder o modificar esas propiedades
Esto evita que el código sea manipulado de forma externa sin validación 

 */

class CuentaBancaria  {
  String titular;
  double _saldo;
  CuentaBancaria({double saldoInicial = 0,  required this.titular}):
  _saldo = saldoInicial;  

  // Getter 
  double get saldoInterno => _saldo; // This will return _saldo's value and put that into saldo - We'll be accesing saldo, not _saldo
  set saldoInterno(double valor) => _saldo = valor; 

  
  // Setter con validacion - Setter are used to make modifications
set saldo(double nuevoSaldo) {
  int fee = 100;

  if (nuevoSaldo <= 0) {
    print("Error: El monto ingresado es inválido");
    return;
  }

  double saldoRestante = nuevoSaldo - fee;

  if (saldoRestante <= 0) {
    print("Cantidad post-cargo no es válida");
    print("Ingrese una cantidad mayor a $fee DOP");
  } else {
    _saldo += saldoRestante;  // sumamos al saldo existente
    print("Depósito realizado: $nuevoSaldo DOP. Cargo aplicado: $fee DOP.");
    print("Nuevo saldo es: $_saldo DOP");
  }
}


  // Método para depositar
void deposito(double monto) {
  int fee = 100;

  if (monto <= 0) {
    print("Error: El monto ingresado es inválido");
    return;
  }

  if (monto <= fee) {
    print("El depósito debe ser mayor a $fee DOP para cubrir el cargo.");
    return;
  }

  _saldo += (monto - fee);
  print("Depósito realizado: $monto DOP. Cargo aplicado: $fee DOP.");
  print("Nuevo saldo: $_saldo DOP");
}



// Método para retirar
void retirar(double retiro) {
  int fee = 100;

  if (retiro <= 0) {
    print("El monto a retirar debe ser mayor que 0");
    return;
  }

  if (retiro + fee > _saldo) {
    print("Fondos insuficientes. Recuerde que hay un cargo de $fee DOP por transacción.");
  } else {
    _saldo -= (retiro + fee);
    print("Usted ha retirado: $retiro DOP. Cargo aplicado: $fee DOP. Su nuevo saldo es: $_saldo DOP");
  }
}


}

