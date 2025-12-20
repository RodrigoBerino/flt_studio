abstract class Conta { //constructor
  String titular;
  double _saldo;

  void receber(double valor ){
    _saldo += valor;
    extrato();
  }

  void enviarValor(double valor){
    if (_saldo >= valor){
      _saldo -= valor;
      extrato();
    } 
  } 

  void extrato(){
    print("$titular: $_saldo");
  }

  Conta (this.titular, this._saldo);
} // constructor

class ContaCorrente extends Conta{
  double emprestimo = 300;
  
  ContaCorrente(super.titular, super._saldo);

  @override
  void enviar (double valor){
    if (_saldo + emprestimo >= valor) {
      _saldo -= valor;
      extrato();
    }
  }
}

class ContaPoupanca extends Conta{
  double rendimento = 0.05;

  void calcRendimento(){
    _saldo += _saldo * rendimento;
    extrato();
  }

  ContaPoupanca(super.titular, super._saldo);
}

/* class Investimento implements Conta{
  @override
  double _saldo;

  @override
  String titular;

  @override
  void enviarValor(double valor) {
    // TODO: implement enviarValor
  }

  @override
  void extrato() {
    // TODO: implement extrato
  }

  @override
  void receber(double valor) {
    // TODO: implement receber
  }

} */

mixin Imposto {
  double taxa = 0.03;

  double valorTaxado(double valor){
    return valor * taxa;
  }
}


class ContaEmpresa extends Conta with Imposto {
  ContaEmpresa(super.titular, super._saldo);
  
  @override
  void enviarValor(double valor) {
    if (_saldo >= valor + valorTaxado(valor)){
      _saldo -= valor + valorTaxado(valor);
      extrato();
    }
  }

  @override
  void receber(double valor) {
    _saldo += valor + valorTaxado(valor);
    extrato();
  }
}

class contaInvestimento extends Conta with Imposto{
  contaInvestimento(super.titular, super._saldo);

  @override
  void enviarValor(double valor) {
    if(_saldo >= valor + valorTaxado(valor)){
      _saldo <= valor + valorTaxado(valor);
      extrato();
    }
    // TODO: implement ==
  }

  @override
  void receber(double valor) {
    _saldo += valor - valorTaxado(valor); 
    extrato();
  }
}