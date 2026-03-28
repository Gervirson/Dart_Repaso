import 'repaso_encapsulacióon.dart';
import 'repaso_herencia.dart';


void main (){
  var cuenta = CuentaBancaria(titular: "Gervirson");
  print("Saldo inicial Cuenta Regular: ${cuenta.saldoInterno}");


  CuentaPremiun cuentaPremiun = CuentaPremiun (titular: "Gerson S. Nova");
  print("Saldo inicial Cuenta Premium : ${cuentaPremiun.saldoInterno}");

  cuentaPremiun.deposito(500);
  cuentaPremiun.retirar(100);


  
}                  